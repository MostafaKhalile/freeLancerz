import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/user.dart';
import '../../../routes/app_pages.dart';
import '../../../services/auth/auth_service.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final _service = LoginService();
  final isLoading = false.obs;

  login() async {
    if (formKey.currentState!.validate()) {
      try {
        isLoading.value = true;
        User currentUser = await _service.login(
            email: mailController.text, password: passwordController.text);
        Get.offAllNamed(Routes.HOME, arguments: currentUser);
      } catch (e, st) {
        log(e.toString());
        log(st.toString());
        Get.snackbar('Error', e.toString());
      } finally {
        isLoading.value = false;
      }
    }
  }
}
