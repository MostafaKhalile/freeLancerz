import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> boot() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(await SharedPreferences.getInstance());
}
