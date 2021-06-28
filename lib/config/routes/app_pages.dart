import 'package:vtrakh/core.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: AppRoutes.WELCOME, page: () => SplashPage()),
    GetPage(name: AppRoutes.ONBOARD, page: () => OnBoardPage()),
    GetPage(name: AppRoutes.REGISTER, page: () => RegisterPage()),
    GetPage(name: AppRoutes.LOGIN, page: () => LoginPage()),
    GetPage(name: AppRoutes.FORGOTPASSWORD, page: () => ForgotPasswordPage()),
  ];
}
