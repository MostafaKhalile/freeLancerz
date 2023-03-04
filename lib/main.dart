import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/config/theme/theme.dart';
import 'app/inject.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await boot();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: defaultTheme,
    ),
  );
}
