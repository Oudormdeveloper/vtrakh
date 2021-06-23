class AppRoutes {
  static Future<String> get initailRoutes async {
    return REGISTER;
  }

  static const WELCOME = '/';
  static const REGISTER = '/auth/register';
  static const LOGIN = '/auth/login';
}
