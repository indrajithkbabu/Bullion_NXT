import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/assets.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/widgets/drop_down_button.dart';
import 'package:bullionnxtnew/helpers/widgets/svg_custom.dart';
import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(color: AppColors.darkSlateGrey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           
          CustomDropdownButton(
            items: Commons.locationList,
            hint: 'Location',
            buttonWidth: 80,
            dropdownIcon: Icon(
              Icons.arrow_drop_down,
              color: AppColors.white,
            ),
            onChanged: (value) {},
            dropDownWidth: 110,
          ),
         
           CustomDropdownButton(
            items: Commons.goldWeightList,
            hint: 'Gold weight',
            buttonWidth: 90,
            dropdownIcon: Icon(
              Icons.arrow_drop_down,
              color: AppColors.white,
            ),
            onChanged: (value) {},
            dropDownWidth: 90,
          ),
         
          CustomDropdownButton(
            items: Commons.timePeriodList,
            hint: 'T+',
            buttonWidth: 50,
            dropdownIcon: Icon(
              Icons.arrow_drop_down,
              color: AppColors.white,
            ),
            onChanged: (value) {},
            dropDownWidth: 60,
          ),
         
          CustomDropdownButton(
            items: Commons.buyOptionsList,
            hint: 'Buy',
            buttonWidth: 50,
            dropdownIcon: SvgCustom(
              asset: Assets.assetsIconsIcFilterHighLow,
              semanticsLabel: 'sell_filter_high_low',
              size: 10,
              colorFilter: ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
            onChanged: (value) {},
            dropDownWidth: 60,
          ),
          
          CustomDropdownButton(
            items: Commons.sellOptionsList,
            hint: 'Sell',
            buttonWidth: 50,
            dropdownIcon: SvgCustom(
              asset: Assets.assetsIconsIcFilterHighLow,
              semanticsLabel: 'sell_filter_high_low',
              size: 10,
              colorFilter: ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
            onChanged: (value) {},
            dropDownWidth: 60,
          )
         
        ],
      ),
    );
  }
}
