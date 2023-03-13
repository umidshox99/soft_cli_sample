import '../../domain/data_source/local_data_source.dart';
import '../../domain/data_source/remote_data_source.dart';
import '../../domain/repository/main_repository.dart';

class MainRepositoryImpl with MainRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  MainRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  bool hasUser() {
    return _localDataSource.hasUser();
  }

  @override
  String getLanguage() {
    return _localDataSource.getLanguage();
  }

  @override
  Future<void> setLanguage(String language) async {
    await _localDataSource.setLanguage(language);
  }

  @override
  Future<void> logout() async {
    await _localDataSource.logout();
  }
}
