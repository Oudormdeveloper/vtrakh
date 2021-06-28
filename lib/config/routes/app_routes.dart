class AppRoutes {
  static Future<String> get initailRoutes async {
    return ONBOARD;
  }

  static const WELCOME = '/';
  static const ONBOARD = '/onboard';
  static const REGISTER = '/auth/register';
  static const LOGIN = '/auth/login';
}
