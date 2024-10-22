import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.hint,
    required this.buttonWidth,
    required this.dropdownIcon,
    required this.onChanged,
    required this.dropDownWidth,
    this.selectedValue,
    this.hintColor,
  });
  final List<String> items;
  final String hint;
  final double? buttonWidth;
  final Widget dropdownIcon;
  final void Function(String?)? onChanged;
  final double? dropDownWidth;
  final String? selectedValue;
  final Color? hintColor;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        customButton: Row(
          children: [
            Text(
              hint,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: hintColor?? AppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  // textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            Commons.gapMinute(isHeight: false),
            // dropdownIcon
          ],
        ),

        buttonStyleData: ButtonStyleData(
          width: buttonWidth,
        ),
        // iconStyleData: IconStyleData(icon: dropdownIcon),
        items: items
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        onChanged: onChanged,
        value: selectedValue,
        dropdownStyleData: DropdownStyleData(
            width: dropDownWidth,
            padding: EdgeInsets.zero,
            maxHeight: 200,
            scrollbarTheme:
                const ScrollbarThemeData(thickness: WidgetStatePropertyAll(1))),
        menuItemStyleData: MenuItemStyleData(
          customHeights: List<double>.generate(items.length, (index) => 40.0),
        ),
      ),
    );
  }
}
