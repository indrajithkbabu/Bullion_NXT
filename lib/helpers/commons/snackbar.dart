import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:flutter/material.dart';

GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();
class SnackBarHelper {
  SnackBarHelper._();

  static void showSnackbar({
    required Widget contentWidget,
    Duration? duration,
    Color? backgroundColor,
    Alignment? alignment,
    double? height,
    bool? showCloseIcon = false,
    BuildContext? context,
  }) {
    snackbarKey.currentState!
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 1000,
          behavior: SnackBarBehavior.fixed,
          duration:
              duration ?? const Duration(milliseconds: AppValues.highDuration),
          content: Container(
            height: height ?? AppValues.snackbarHeight,
            alignment: alignment ?? Alignment.center,
            padding:
                const EdgeInsets.symmetric(horizontal: AppValues.gapMedium),
            decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.primary.withOpacity(0.9),
              borderRadius:
                  BorderRadius.circular(AppValues.borderRadiusVerySmall),
            ),
            child: contentWidget,
          ),
          showCloseIcon: showCloseIcon,
          closeIconColor: AppColors.primary,
          // margin: const EdgeInsets.only(
          //   // bottom: ScreenUtil().screenHeight -
          //   //     (Platform.isAndroid ? 100 : ScreenUtil().statusBarHeight * 3),
          //   bottom: 15,
          //   left: 10,
          //   right: 10,
          // ),
          backgroundColor: AppColors.transparentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      );
  }
}
