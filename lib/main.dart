import 'package:get_storage/get_storage.dart';
import 'package:vtrakh/config/routes/export.dart';
import 'package:vtrakh/core.dart';

void main() async {
  await GetStorage.init();
  var initialRoute = await AppRoutes.initailRoutes;
  runApp(MyApp(
    initialRoute: initialRoute,
  ));
}

class MyApp extends StatelessWidget {
  final String? initialRoute;
  const MyApp({this.initialRoute});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: AppPages.routes,
      title: 'Flutter Demo',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
