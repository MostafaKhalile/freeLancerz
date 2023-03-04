import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/theme/theme.dart';
import 'app_loading_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.isOutlined = false,
    this.loading = false,
    this.isCircular = false,
    this.color = AppColors.secondaryColor,
    this.radius = 100,
    this.height = 65,
    this.width = 170,
    this.borderColor = AppColors.primaryColor,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;
  final bool isOutlined;
  final bool loading;
  final bool isCircular;
  final Color? color;
  final Color? borderColor;
  final double radius;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? null : onPressed,
      style: isOutlined
          ? ElevatedButton.styleFrom(
              disabledBackgroundColor: AppColors.grayBackground,
              foregroundColor: color ?? AppColors.primaryColor,
              backgroundColor: AppColors.white,
              elevation: 0,
              shape: isCircular
                  ? CircleBorder(
                      side: BorderSide(
                          color: borderColor ?? AppColors.primaryColor),
                    )
                  : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                      side: BorderSide(
                          color: borderColor ?? AppColors.primaryColor),
                    ),
              minimumSize: Size(width, height),
            )
          : ElevatedButton.styleFrom(
              disabledBackgroundColor: AppColors.grayBackground,
              disabledForegroundColor: AppColors.black,
              padding: EdgeInsets.zero,
              foregroundColor: AppColors.white,
              backgroundColor: color ?? AppColors.primaryColor,
              elevation: 0,
              shape: isCircular
                  ? const CircleBorder()
                  : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                    ),
              minimumSize: Size(width, height),
            ),
      child: loading
          ? const Center(
              child: AppLoadingWidget(
              size: 20,
            ))
          : child,
    );
  }
}
