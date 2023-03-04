import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../config/theme/theme.dart';
import '../../../config/utils/extensions/string_validations.dart';
import '../../../widgets/custom_button.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Obx(
          (() => Form(
                key: controller.formKey,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  height: context.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        'Login',
                        style: context.textTheme.displayMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SvgPicture.asset('assets/svg/login.svg'),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                          controller: controller.mailController,
                          validator: (value) {
                            if (!value!.isValidEmail) {
                              return 'Please Enter a valid Email';
                            }
                            return null;
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: 'Enter your email address',
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                          controller: controller.passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter your password';
                            }
                            return null;
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: 'Enter your password',
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Forgot your ",
                            style: const TextStyle(
                                color: AppColors.secondaryTypoColor,
                                fontSize: 18),
                            children: [
                              TextSpan(
                                  text: 'password?',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      log('Terms of Service"');
                                    },
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ]),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                          loading: controller.isLoading.value,
                          onPressed: controller.login,
                          child: Text(
                            'Enter',
                            style: context.textTheme.headlineSmall!
                                .copyWith(color: Colors.white),
                          )),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
