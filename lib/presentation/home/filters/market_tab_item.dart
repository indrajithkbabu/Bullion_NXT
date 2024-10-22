import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class MarketTabItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  const MarketTabItem({super.key, required this.text,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 20,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:isSelected? AppColors.darkSlateGrey :AppColors.transparentColor),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color:!isSelected? AppColors.darkSlateGrey:AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }
}
