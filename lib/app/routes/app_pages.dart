import 'package:get/get.dart';

import '../config/utils/prefs.dart';
import '../config/utils/prefs_keys.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static initialPage() {
    return (Prefs.getString(PrefsKeys.token).isEmpty)
        ? (Prefs.getBool(PrefsKeys.firstTime))
            ? Routes.LOGIN
            : Routes.WELCOME
        : Routes.HOME;
  }

  static final initial = initialPage();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
  ];
}
