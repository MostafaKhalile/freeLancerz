import 'package:get/get.dart';

import '../../../config/utils/prefs.dart';
import '../../../config/utils/prefs_keys.dart';
import '../../../routes/app_pages.dart';

class WelcomeController extends GetxController {
  toLogin() {
    Get.offAllNamed(Routes.LOGIN);
    Prefs.setBool(PrefsKeys.firstTime, true);
  }
}
