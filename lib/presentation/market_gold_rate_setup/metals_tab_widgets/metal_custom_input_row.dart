import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_text_form_field.dart';
import 'package:bullionnxtnew/helpers/widgets/drop_down_button.dart';
import 'package:flutter/material.dart';

class MetalCustomInputRow extends StatelessWidget {
  const MetalCustomInputRow({
    super.key,
    required this.label,
    required this.sellDiffValue,
    required this.buyDiffValue,
    required this.timePeriodValue,
    required this.switchValue,
    required this.onSellDiffChanged,
    required this.onBuyDiffChanged,
    required this.onTimePeriodChanged,
    required this.onSwitchChanged,
  });
  final String label;
  final String sellDiffValue;
  final String buyDiffValue;
  final String timePeriodValue;
  final bool switchValue;
  final Function(String) onSellDiffChanged;
  final Function(String) onBuyDiffChanged;
  final Function(String?) onTimePeriodChanged;
  final Function(bool) onSwitchChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: AppValues.containerTileHeight,
            width: AppValues.containerTileWidth,
            color: AppColors.primary,
            child: Center(
                child: Text(
              label,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
              overflow: TextOverflow.ellipsis,
            )),
          ),
        ),
        Commons.gapMinute(isHeight: false),
        Expanded(
          child: Container(
            height: AppValues.containerTileHeight,
            width: AppValues.containerTileWidth,
            decoration: BoxDecoration(
              color: AppColors.offWhite,
            ),
            child: CustomTextFormField(
              onChanged: onSellDiffChanged,
              hintText: sellDiffValue,
              fillColor: AppColors.offWhite,
              keyboardType: TextInputType.number,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(AppValues.borderRadiusVerySmall),
                borderSide: BorderSide(color: AppColors.grey.withOpacity(0.2)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(AppValues.borderRadiusVerySmall),
                borderSide: BorderSide(color: AppColors.grey.withOpacity(0.2)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(AppValues.borderRadiusVerySmall),
                borderSide: BorderSide(color: AppColors.grey.withOpacity(0.2)),
              ),
            ),
          ),
        ),
        Commons.gapMinute(isHeight: false),
        Expanded(
          child: Container(
              height: AppValues.containerTileHeight,
              width: AppValues.containerTileWidth,
              decoration: BoxDecoration(
                color: AppColors.offWhite,
              ),
              child: CustomTextFormField(
                onChanged: onBuyDiffChanged,
                hintText: buyDiffValue,
                fillColor: AppColors.offWhite,
                keyboardType: TextInputType.number,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(AppValues.borderRadiusVerySmall),
                  borderSide:
                      BorderSide(color: AppColors.grey.withOpacity(0.2)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(AppValues.borderRadiusVerySmall),
                  borderSide:
                      BorderSide(color: AppColors.grey.withOpacity(0.2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(AppValues.borderRadiusVerySmall),
                  borderSide:
                      BorderSide(color: AppColors.grey.withOpacity(0.2)),
                ),
              )),
        ),
        Commons.gapMinute(isHeight: false),
        Expanded(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: AppValues.containerTileHeight,
              width: AppValues.containerTileWidth,
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                borderRadius:
                    BorderRadius.circular(AppValues.borderRadiusVerySmall),
                border: Border.all(
                  color: AppColors.grey.withOpacity(0.2),
                ),
              ),
              // decoration: BoxDecoration(
              //   color: AppColors.offWhite,
              // ),
              child: CustomDropdownButton(
                items: Commons.timePeriodList,
                hint: timePeriodValue, // Using the hintText as hint here
                hintColor: AppColors.grey,
                buttonWidth: 50,
                dropdownIcon: Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.white,
                ),
                onChanged:
                    onTimePeriodChanged, // Pass the onChanged method from the TextFormField
                dropDownWidth: 60,
              )

              // CustomTextFormField(
              //   onChanged: onTimePeriodChanged,
              //   hintText: timePeriodValue,
              //   fillColor: AppColors.offWhite,
              //   keyboardType: TextInputType.number,
              //   contentPadding:
              //       const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              //   border: OutlineInputBorder(
              //     borderRadius:
              //         BorderRadius.circular(AppValues.borderRadiusVerySmall),
              //     borderSide: BorderSide(color: AppColors.grey.withOpacity(0.2)),
              //   ),
              //   enabledBorder: OutlineInputBorder(
              //     borderRadius:
              //         BorderRadius.circular(AppValues.borderRadiusVerySmall),
              //     borderSide: BorderSide(color: AppColors.grey.withOpacity(0.2)),
              //   ),
              //   focusedBorder: OutlineInputBorder(
              //     borderRadius:
              //         BorderRadius.circular(AppValues.borderRadiusVerySmall),
              //     borderSide: BorderSide(color: AppColors.grey.withOpacity(0.2)),
              //   ),
              // ),
              ),
        ),
        Commons.gapMinute(isHeight: false),
        Expanded(
          child: Container(
            height: AppValues
                .containerTileHeight, // Keep your container height if needed
            width: AppValues.containerTileWidth,
            color: AppColors.offWhite,
            child: Center(
              child: Transform.scale(
                scaleX: 0.9,
                scaleY: 0.85,
                child: Switch(
                    value: switchValue,
                    activeColor: AppColors.offWhite,
                    activeTrackColor: AppColors.green,
                    // inactiveTrackColor: AppColors.grey,
                    inactiveThumbColor: AppColors.grey,
                    onChanged: onSwitchChanged),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
