import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/presentation/home/market_price_card_section/price_info_box.dart';
import 'package:flutter/material.dart';

class PriceOverviewPanel extends StatelessWidget {
  const PriceOverviewPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppValues.containerHeightLarge,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppValues.borderRadiusNormal),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PriceInfoBox(
            title: 'Gold spot',
            price: '2002.23',
            high: '2004.05',
            low: '2000.00',
            priceColor: AppColors.green,
          ),
          PriceInfoBox(
            title: 'INR',
            price: '2002.23',
            high: '2004.05',
            low: '2000.00',
            priceColor: AppColors.red,
          ),
          PriceInfoBox(
            title: 'Gold cost',
            price: '2002.23',
            high: '2004.05',
            low: '2000.00',
            priceColor: AppColors.green,
          )
        ],
      ),
    );
  }
}
