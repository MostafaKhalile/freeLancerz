import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/utils/prefs.dart';
import '../../../config/utils/prefs_keys.dart';
import '../../../routes/app_pages.dart';
import '../views/tabs/main_menu.dart';

class HomeController extends GetxController {
  final selectedIndex = 0.obs;

  final String currentUserName = Prefs.getString(PrefsKeys.userName);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> widgetOptions = <Widget>[
    const MainMenu(),
    const Text(
      'Index 1: Kalendar',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Profiel',
      style: optionStyle,
    ),
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  logout() {
    Prefs.clear();
    Get.offAllNamed(Routes.LOGIN);
  }
}
