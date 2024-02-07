mixin LocalDataSource {
  Future<void> setUser(bool value);

  bool hasUser();

  String getLanguage();

  Future<void> setLanguage(String language);

  Future<void> logout();

}
