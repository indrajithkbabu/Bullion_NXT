import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:flutter/material.dart';

class SpotCustomSellingPriceRow extends StatelessWidget {
  const SpotCustomSellingPriceRow(
      {super.key,
      this.onTapSubtract,
      this.onTapAdd,
      required this.label,
      required this.stockLabel,
      required this.switchValue,
      required this.onSwitchChanged});

  final void Function()? onTapSubtract;
  final void Function()? onTapAdd;
  final int label;
  final String stockLabel;
  final bool switchValue;
  final Function(bool) onSwitchChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: AppValues.containerTileHeight,
          width: AppValues.containerTileWidth,
          color: AppColors.darkGrey,
          child: Center(
              child: Text(
            stockLabel,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
          )),
        )),
        Commons.gapMinute(isHeight: false),
        Expanded(
            child: Container(
          height: AppValues.containerTileHeight,
          width: AppValues.containerTileWidth,
          color: AppColors.darkGrey,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: onTapSubtract,
                  child: const Icon(Icons.remove_circle_outline_rounded)),
              Text(
                '$label',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: AppColors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              GestureDetector(
                  onTap: onTapAdd,
                  child: const Icon(Icons.add_circle_outline_rounded)),
            ],
          )),
        )),
        Commons.gapMinute(isHeight: false),
        Expanded(
            child: Container(
          height: AppValues.containerTileHeight,
          width: AppValues.containerTileWidth,
          color: AppColors.green,
          child: const Center(child: Text('999')),
        )),
        Commons.gapMinute(isHeight: false),
        Expanded(
            child: Container(
          height: AppValues.containerTileHeight,
          width: AppValues.containerTileWidth,
          color: AppColors.darkGrey,
          child: Center(
            child: Transform.scale(
              scaleX: 0.9,
              scaleY: 0.85,
              child: Switch(
                value: switchValue,
                activeColor: AppColors.offWhite,
                activeTrackColor: AppColors.green,
                inactiveThumbColor: AppColors.grey,
                onChanged: onSwitchChanged,
              ),
            ),
          ),
        )),
      ],
    );
  }
}
