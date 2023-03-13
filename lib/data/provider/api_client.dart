import 'dart:io';
import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/dialog/base_dialogs.dart';
import 'package:soft_cli_sample/data/model/version/update_version_response.dart';
import 'package:soft_cli_sample/routes/navigation_route.dart';
import 'package:dio/io.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../core/dio_retry/retry_interceptor.dart';
import '../../domain/data_source/local_data_source.dart';
import 'error_handler_interceptor.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(NavigationRoute navigation, LocalDataSource dataSource) {
    Dio dio = Dio(BaseOptions(followRedirects: false));
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return client;
    };
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          requestHeader: true,
          request: true,
          error: true,
          responseHeader: true,
        ),
      );
    }
    dio.options = BaseOptions(
      receiveTimeout:Duration(milliseconds: Constants.dioTimeOut),
      connectTimeout:Duration(milliseconds: Constants.dioTimeOut) ,
      sendTimeout: Duration(milliseconds: Constants.dioTimeOut),
    );

    dio.interceptors.addAll([
      RetryInterceptor(
        dio: dio,
        logPrint: (error) async {},
        toNoInternetPageNavigator: () async {
          BaseDialogs.showNoInternetDialog(navigation.navigatorKey.currentContext!);
        },
        refreshTokenFunction: () async {},
        accessTokenGetter: () => Constants.empty,
      ),
      ErrorHandlerInterceptor(),
    ]);
    return _ApiClient(dio, baseUrl: Constants.baseUrl);
  }

  @GET('/v1/mobile/version/{appName}')
  Future<UpdateVersionResponse> checkVersion(
    @Path("appName") String appName,
  );
}
