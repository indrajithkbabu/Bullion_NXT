import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  // final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Color? fillColor;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
    this.contentPadding,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: AppColors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w500), // Adjust as per your design
        filled: true,
        fillColor:fillColor?? AppColors.white, // Background color for the text field
        border:border?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              AppValues.borderRadiusVerySmall), // Adjust radius if needed
          borderSide: BorderSide(color: AppColors.grey),
        ),
        enabledBorder:enabledBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppValues.borderRadiusVerySmall),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        focusedBorder:focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppValues.borderRadiusVerySmall),
          borderSide: BorderSide(
              color: AppColors.primary), // Change to your primary color
        ),

        prefixIcon: prefixIcon, // Change to your primary color
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(
                vertical: AppValues.gapNormal,
                horizontal: AppValues.gapNormal), // Adjust padding here
      ),
    );
  }
}
