import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SpotCustomInputRow extends StatelessWidget {
  const SpotCustomInputRow({
    super.key,
    required this.label,
    this.gold999IndValue,
    this.gold999ImpValue,
    this.hintGold999IndValue,
    this.hintGold999ImpValue,
    this.ongold999IndTextFormFieldValueChanged,
    this.ongold999ImpTextFormFieldValueChanged,
    this.showRadioButton,
    this.gold999IndRadioValue,
    this.onRadioValueGold999IndChanged,
    this.gold999ImpRadioValue,
    this.onRadioValueGold999ImpChanged,
    this.showSwitchButton,
    this.switchGold999indValue,
    this.switchGold999ImpValue,
    this.onSwitchGold999IndChanged,
    this.onSwitchGold999ImpChanged,
  });

  final String label;
  final String? gold999IndValue;
  final String? gold999ImpValue;
  final String? hintGold999IndValue;
  final String? hintGold999ImpValue;
  final Function(String)? ongold999IndTextFormFieldValueChanged;
  final Function(String)? ongold999ImpTextFormFieldValueChanged;
  final bool? showRadioButton;
  final int? gold999IndRadioValue;
  final void Function(int?)? onRadioValueGold999IndChanged;
  final int? gold999ImpRadioValue;
  final void Function(int?)? onRadioValueGold999ImpChanged;
  final bool? showSwitchButton;
  final bool? switchGold999indValue;
  final bool? switchGold999ImpValue;
  final Function(bool)? onSwitchGold999IndChanged;
  final Function(bool)? onSwitchGold999ImpChanged;
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
            color: AppColors.offWhite,
            child: showSwitchButton ?? false
                ? Center(
                    child: Transform.scale(
                      scaleX: 0.9,
                      scaleY: 0.85,
                      child: Switch(
                        value: switchGold999indValue ?? false,
                        activeColor: AppColors.offWhite,
                        activeTrackColor: AppColors.green,
                        inactiveThumbColor: AppColors.grey,
                        onChanged: onSwitchGold999IndChanged,
                      ),
                    ),
                  )
                : showRadioButton ?? false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: 0,
                                groupValue: gold999IndRadioValue,
                                onChanged: onRadioValueGold999IndChanged,
                              ),
                              Text(
                                '%',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: 1,
                                groupValue: gold999IndRadioValue,
                                onChanged: onRadioValueGold999IndChanged,
                              ),
                              Text(
                                'V',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )
                            ],
                          )
                        ],
                      )
                    : gold999IndValue == null
                        ? CustomTextFormField(
                            onChanged: ongold999IndTextFormFieldValueChanged,
                            hintText: hintGold999IndValue ?? '0',
                            fillColor: AppColors.offWhite,
                            keyboardType: TextInputType.number,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppValues.borderRadiusVerySmall),
                              borderSide: BorderSide(
                                  color: AppColors.grey.withOpacity(0.2)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppValues.borderRadiusVerySmall),
                              borderSide: BorderSide(
                                  color: AppColors.grey.withOpacity(0.2)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppValues.borderRadiusVerySmall),
                              borderSide: BorderSide(
                                  color: AppColors.grey.withOpacity(0.2)),
                            ),
                          )
                        : Center(
                            child: Text(
                            gold999IndValue ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppColors.black,
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
            color: AppColors.offWhite,
            child: showSwitchButton ?? false
                ? Center(
                    child: Transform.scale(
                      scaleX: 0.9,
                      scaleY: 0.85,
                      child: Switch(
                        value: switchGold999ImpValue ?? false,
                        activeColor: AppColors.offWhite,
                        activeTrackColor: AppColors.green,
                        inactiveThumbColor: AppColors.grey,
                        onChanged: onSwitchGold999ImpChanged,
                      ),
                    ),
                  )
                : showRadioButton ?? false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: 0,
                                groupValue: gold999ImpRadioValue,
                                onChanged: onRadioValueGold999ImpChanged,
                              ),
                              Text(
                                '%',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio(
                                value: 1,
                                groupValue: gold999ImpRadioValue,
                                onChanged: onRadioValueGold999ImpChanged,
                              ),
                              Text(
                                'V',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )
                            ],
                          )
                        ],
                      )
                    : gold999ImpValue == null
                        ? CustomTextFormField(
                            onChanged: ongold999ImpTextFormFieldValueChanged,
                            hintText: hintGold999ImpValue ?? '0',
                            fillColor: AppColors.offWhite,
                            keyboardType: TextInputType.number,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppValues.borderRadiusVerySmall),
                              borderSide: BorderSide(
                                  color: AppColors.grey.withOpacity(0.2)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppValues.borderRadiusVerySmall),
                              borderSide: BorderSide(
                                  color: AppColors.grey.withOpacity(0.2)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppValues.borderRadiusVerySmall),
                              borderSide: BorderSide(
                                  color: AppColors.grey.withOpacity(0.2)),
                            ),
                          )
                        : Center(
                            child: Text(
                            gold999ImpValue ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppColors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                            overflow: TextOverflow.ellipsis,
                          )),
          ),
        ),
      ],
    );
  }
}
