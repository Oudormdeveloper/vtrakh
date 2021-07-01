import 'package:vtrakh/core.dart';
import 'package:vtrakh/pages/vehicles/vehicles.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: AppRoutes.WELCOME, page: () => SplashPage()),
    GetPage(name: AppRoutes.ONBOARD, page: () => OnBoardPage()),
    GetPage(name: AppRoutes.REGISTER, page: () => RegisterPage()),
    GetPage(name: AppRoutes.LOGIN, page: () => LoginPage()),
    GetPage(name: AppRoutes.FORGOTPASSWORD, page: () => ForgotPasswordPage()),
    GetPage(name: AppRoutes.MASTER, page: () => MasterPage()),
    GetPage(name: AppRoutes.TRACKING, page: () => TrackingPage()),
    GetPage(name: AppRoutes.SETTINGS, page: () => SettingsPage()),
    GetPage(name: AppRoutes.VEHICLES, page: () => VehiclesPage()),
  ];
}
