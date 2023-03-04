import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../config/theme/theme.dart';
import '../../../widgets/custom_button.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Welkom',
              style: context.textTheme.displayMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            SvgPicture.asset('assets/svg/welcome.svg'),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Quisque urna. ex non viverra placerat quis Nunc non Ut id id convallis. lacus Nullam nisi enim. elit Donec risus convallis.',
              textAlign: TextAlign.center,
              maxLines: 4,
              style: context.textTheme.titleSmall!
                  .copyWith(color: Colors.white, height: 2.5),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                onPressed: controller.toLogin,
                child: Text(
                  'Login',
                  style: context.textTheme.headlineSmall!
                      .copyWith(color: Colors.white),
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
