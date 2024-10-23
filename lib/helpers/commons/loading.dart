import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingHelper {
  LoadingHelper._();
  static Future<void> showLoading({String? text}) async {
    await EasyLoading.show(
      maskType: EasyLoadingMaskType.black,
      status: text,
      indicator: Center(child: customLoadingWidget()),
      dismissOnTap: false,
    );
  }

  static Future<void> showProgress({required double progress}) async {
    EasyLoading.instance.progressColor = AppColors.primary;
    EasyLoading.instance.radius = AppValues.gapMedium;
    EasyLoading.instance.lineWidth = 5;
    EasyLoading.instance.fontSize = 14;
    EasyLoading.instance.textColor = AppColors.offWhite;
    await EasyLoading.showProgress(
      progress,
      status: '${(progress * 100).toStringAsFixed(0)}%',
      maskType: EasyLoadingMaskType.black,
    );
  }

  static void hideLoading() {
    EasyLoading.dismiss();
  }

  static Widget customLoadingWidget() {
    return Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
      ),
    );
  }
}
