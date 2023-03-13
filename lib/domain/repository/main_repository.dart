mixin MainRepository {
  bool hasUser();

  String getLanguage();

  Future<void> setLanguage(String language);

  Future<void> logout();
}
