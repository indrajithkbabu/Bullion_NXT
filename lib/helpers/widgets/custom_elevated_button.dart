import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:flutter/material.dart';


class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom({
    required this.text,
    this.onPressed,
    this.height,
    this.width,
    this.padding,
    this.widget,
    this.widgetStart = false,
    this.bgColor,
    this.inactiveColor,
    this.style,
    this.shape,
    super.key,
  });

  final String text;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? bgColor;
  final Color? inactiveColor;
  final bool widgetStart;
  final Widget? widget;
  final TextStyle? style;
  final VoidCallback? onPressed;
  final OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? AppColors.primary,
        disabledBackgroundColor: inactiveColor ?? AppColors.primary,
        shadowColor: AppColors.transparentColor,
        // foregroundColor: AppColors.splashColor,
        shape: shape,
        
        surfaceTintColor: AppColors.transparentColor,
        minimumSize: Size(
          width ?? MediaQuery.of(context).size.width,
          height ?? AppValues.buttonHeight,
        ),
        padding: padding,
      ),
      child: 
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // if (widget != null && widgetStart) ...[
          //   widget!,
          //   Commons.gapMinute(isHeight: false),
          // ],
          Text(
            text,
            style: style ??
                Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: AppColors.white),
          ),
          // if (widget != null && !widgetStart) ...[
          //   Commons.gapMinute(isHeight: false),
          //   widget!,
          // ],
        ],
      ),
    );
  }
}
