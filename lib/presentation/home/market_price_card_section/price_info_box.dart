import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:flutter/material.dart';

class PriceInfoBox extends StatelessWidget {
 const PriceInfoBox({
    super.key,
    required this.title,
    required this.price,
    required this.high,
    required this.low,
   required this.priceColor ,
  });
  final String title;
  final String price;
  final String high;
  final String low;
  final Color priceColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
        ),
        Commons.gapMinute(),
        Container(
          width: AppValues.containerWidthLarge,
          height: AppValues.containerHeightSmall,
          decoration: BoxDecoration(
            color: priceColor,
            borderRadius:
                BorderRadius.circular(AppValues.borderRadiusVerySmall),
          ),
          child: Center(
              child: Text(
            price,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
          )),
        ),
        Commons.gapMinute(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'H $high',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Commons.gapVerySmall(isHeight: false),
            Text(
              'L $low',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
