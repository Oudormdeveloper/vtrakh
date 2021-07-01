class AppRoutes {
  static Future<String> get initailRoutes async {
    return WELCOME;
  }

  static const WELCOME = '/';
  static const ONBOARD = '/onboard';
  static const REGISTER = '/auth/register';
  static const LOGIN = '/auth/login';
  static const FORGOTPASSWORD = '/auth/forgot-password';
  static const MASTER = '/master';
  static const SETTINGS = '/settings';
  static const TRACKING = '/tracking';
  static const VEHICLES = '/vehicles';
}
