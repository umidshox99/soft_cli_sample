import 'package:hive/hive.dart';
import 'package:soft_cli_sample/core/constants/constants.dart';

import '../../domain/data_source/local_data_source.dart';

class LocalDataSourceImpl with LocalDataSource {
  @override
  Future<void> setUser(bool value) async {
    final box = Hive.box(Constants.credentialsBox);
    await box.put(Constants.hasUser, value);
  }

  @override
  bool hasUser() {
    final box = Hive.box(Constants.credentialsBox);
    return box.get(Constants.hasUser, defaultValue: false) ?? false;
  }

  @override
  String getLanguage() {
    final box = Hive.box(Constants.credentialsBox);
    return box.get(Constants.language, defaultValue: Constants.uz) ?? Constants.uz;
  }

  @override
  Future<void> setLanguage(String language) async {
    final box = Hive.box(Constants.credentialsBox);
    await box.put(Constants.language, language);
  }

  @override
  Future<void> logout() async {
    final credentials = Hive.box(Constants.credentialsBox);
    await credentials.clear();
  }
}
