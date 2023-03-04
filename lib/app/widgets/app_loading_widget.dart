import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../config/theme/theme.dart';

class AppLoadingWidget extends StatelessWidget {
  final Color? color;
  final double? size;
  const AppLoadingWidget({Key? key, this.color, this.size = 40.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: SpinKitPulse(
          color: color ?? AppColors.primaryColor,
        ),
      ),
    );
  }
}
