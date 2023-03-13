import 'package:get_it/get_it.dart';
import 'package:soft_cli_sample/cubit/app_theme/app_theme_cubit.dart';
import 'package:soft_cli_sample/cubit/home/home_cubit.dart';
import 'package:soft_cli_sample/cubit/language/language_cubit.dart';
import 'package:soft_cli_sample/cubit/main/main_cubit.dart';
import 'package:soft_cli_sample/cubit/sign_in/sign_in_cubit.dart';

import '../core/functions/base_functions.dart';
import '../cubit/profile/profile_cubit.dart';
import '../cubit/sign_up/sign_up_cubit.dart';
import '../data/local_data_source/local_data_source_impl.dart';
import '../data/local_data_source/mock_local_data_source_impl.dart';
import '../data/provider/api_client.dart';
import '../data/provider/mock_api_client.dart';
import '../data/repository/auth_repository_impl.dart';
import '../data/repository/main_repository_impl.dart';
import '../domain/data_source/local_data_source.dart';
import '../domain/data_source/remote_data_source.dart';
import '../domain/repository/auth_repository.dart';
import '../domain/repository/main_repository.dart';
import '../routes/navigation_route.dart';

final getItInstance = GetIt.I;

init() {
  getItInstance.registerLazySingleton<NavigationRoute>(
    () => NavigationRoute(),
  );

  getItInstance.registerLazySingleton<LocalDataSource>(
    () => BaseFunctions.noTestEnvironment
        ? LocalDataSourceImpl()
        : MockLocalDataSourceImpl(),
  );

  getItInstance.registerLazySingleton<ApiClient>(
    () => ApiClient(
      getItInstance<NavigationRoute>(),
      getItInstance<LocalDataSource>(),
    ),
  );

  getItInstance.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      BaseFunctions.noTestEnvironment
          ? getItInstance<ApiClient>()
          : MockApiClient(),
    ),
  );

  getItInstance.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getItInstance<RemoteDataSource>(),
      getItInstance<LocalDataSource>(),
    ),
  );

  getItInstance.registerLazySingleton<MainRepository>(
    () => MainRepositoryImpl(
      getItInstance<RemoteDataSource>(),
      getItInstance<LocalDataSource>(),
    ),
  );

  if (BaseFunctions.noTestEnvironment) {
    getItInstance.registerLazySingleton<MainCubit>(
      () => MainCubit(
        getItInstance<NavigationRoute>(),
      ),
    );
  } else {
    getItInstance.registerFactory<MainCubit>(
      () => MainCubit(
        getItInstance<NavigationRoute>(),
      ),
    );
  }

  if (BaseFunctions.noTestEnvironment) {
    getItInstance.registerLazySingleton<HomeCubit>(
      () => HomeCubit(
        getItInstance<NavigationRoute>(),
        getItInstance<MainRepository>(),
      ),
    );
  } else {
    getItInstance.registerFactory<HomeCubit>(
      () => HomeCubit(
        getItInstance<NavigationRoute>(),
        getItInstance<MainRepository>(),
      ),
    );
  }

  if (BaseFunctions.noTestEnvironment) {
    getItInstance.registerLazySingleton<ProfileCubit>(
      () => ProfileCubit(
        getItInstance<NavigationRoute>(),
        getItInstance<MainRepository>(),
      ),
    );
  } else {
    getItInstance.registerFactory<ProfileCubit>(
      () => ProfileCubit(
        getItInstance<NavigationRoute>(),
        getItInstance<MainRepository>(),
      ),
    );
  }


  if (BaseFunctions.noTestEnvironment) {
    getItInstance.registerLazySingleton<AppThemeCubit>(
      () => AppThemeCubit(),
    );
  } else {
    getItInstance.registerFactory<AppThemeCubit>(
      () => AppThemeCubit(),
    );
  }

  getItInstance.registerFactory<SignInCubit>(
    () => SignInCubit(
      getItInstance<NavigationRoute>(),
      getItInstance<AuthRepository>(),
    ),
  );

  getItInstance.registerFactory<SignUpCubit>(
    () => SignUpCubit(
      getItInstance<NavigationRoute>(),
      getItInstance<AuthRepository>(),
    ),
  );




  getItInstance.registerFactory<LanguageCubit>(
    () => LanguageCubit(
      getItInstance<NavigationRoute>(),
      getItInstance<MainRepository>(),
    ),
  );
}
