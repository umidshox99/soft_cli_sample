import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:soft_cli_sample/data/model/version/update_version_response.dart';
import 'package:soft_cli_sample/data/provider/api_client.dart';
import 'package:repo_annotation/repo_annotation.dart';
import 'package:soft_cli_sample/data/provider/response_handler.dart';
import 'package:soft_cli_sample/data/provider/server_error.dart';

part 'remote_data_source.g.dart';

@subGen
mixin RemoteDataSource {
  Future<ResponseHandler<UpdateVersionResponse>> checkVersion({required String appName});
}
