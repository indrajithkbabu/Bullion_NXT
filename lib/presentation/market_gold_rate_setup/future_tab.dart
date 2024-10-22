import 'package:bullionnxtnew/bloc/future/future_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_tab_title_row.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/spot_tab_widgets/spot_custom_selling_price_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FutureTab extends StatelessWidget {
  const FutureTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FutureBloc, FutureState>(
      builder: (futureContext, futureState) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      CustomTabTitleRow(
                        titles: const ['Symbols', 'Bid', 'Ask', 'High', 'Low'],
                        backgroundColors: [
                          AppColors.primary,
                          AppColors.primary,
                          AppColors.primary,
                          AppColors.primary,
                          AppColors.primary
                        ],
                        textColors: [
                          AppColors.white,
                          AppColors.white,
                          AppColors.white,
                          AppColors.white,
                          AppColors.white
                        ],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      Commons.gapVeryMinute(),
                      CustomTabTitleRow(
                        titles: const [
                          'Gold cost',
                          '65412',
                          '65235',
                          '68745',
                          '63214'
                        ],
                        backgroundColors: [
                          AppColors.primary,
                          AppColors.offWhite,
                          AppColors.offWhite,
                          AppColors.offWhite,
                          AppColors.offWhite
                        ],
                        textColors: [
                          AppColors.white,
                          AppColors.black,
                          AppColors.black,
                          AppColors.black,
                          AppColors.black
                        ],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      Commons.gapVeryMinute(),
                      CustomTabTitleRow(
                        titles: const [
                          'Gold spot',
                          '6541.02',
                          '6527.35',
                          '6872.45',
                          '6329.14'
                        ],
                        backgroundColors: [
                          AppColors.primary,
                          AppColors.offWhite,
                          AppColors.offWhite,
                          AppColors.offWhite,
                          AppColors.offWhite
                        ],
                        textColors: [
                          AppColors.white,
                          AppColors.black,
                          AppColors.black,
                          AppColors.black,
                          AppColors.black
                        ],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      Commons.gapVeryMinute(),
                      CustomTabTitleRow(
                        titles: const [
                          'INR',
                          '82.5',
                          '82.5',
                          '82.5',
                          '82.5',
                        ],
                        backgroundColors: [
                          AppColors.primary,
                          AppColors.offWhite,
                          AppColors.offWhite,
                          AppColors.offWhite,
                          AppColors.offWhite
                        ],
                        textColors: [
                          AppColors.white,
                          AppColors.black,
                          AppColors.black,
                          AppColors.black,
                          AppColors.black
                        ],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                Commons.gapMedium(),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.darkSlateGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Base ask rate : 7256',
                            style:
                                Theme.of(context).textTheme.titleSmall!.copyWith(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'High: 7256',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Commons.gapNormal(isHeight: false),
                              Text(
                                'Low : 7256',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    CustomTabTitleRow(
                      titles: const [
                        'Stocks',
                        'Sell difference',
                        'Selling price',
                        'Display',
                      ],
                      backgroundColors: [
                        AppColors.darkGrey,
                        AppColors.darkGrey,
                        AppColors.darkGrey,
                        AppColors.darkGrey,
                      ],
                      textColors: [
                        AppColors.black,
                        AppColors.black,
                        AppColors.black,
                        AppColors.black,
                      ],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock999IndSellDiff,
                      stockLabel: '999 IND',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks999IndSellDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks999IndSellDiff());
                      },
                      switchValue: futureState.enableStock999IndSellDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(ToggleStock999IndDisplay(
                            enableStock999IndSellDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock999ImpSellDiff,
                      stockLabel: '999 IMP',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks999ImpSellDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks999ImpSellDiff());
                      },
                      switchValue: futureState.enableStock999ImpSellDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(ToggleStock999ImpDisplay(
                            enableStock999ImpSellDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock995IndSellDiff,
                      stockLabel: '995 IND',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks995IndSellDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks995IndSellDiff());
                      },
                      switchValue: futureState.enableStock995IndSellDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(ToggleStock995IndDisplay(
                            enableStock995IndSellDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock995ImpSellDiff,
                      stockLabel: '995 IMP',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks995ImpSellDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks995ImpSellDiff());
                      },
                      switchValue: futureState.enableStock995ImpSellDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(ToggleStock995ImpDisplay(
                            enableStock995ImpSellDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock9999IndSellDiff,
                      stockLabel: '999.9 IND',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks9999IndSellDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks9999IndSellDiff());
                      },
                      switchValue: futureState.enableStock9999IndSellDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock9999IndDisplay(
                                enableStock9999IndSellDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock9999ImpSellDiff,
                      stockLabel: '999.9 IMP',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks9999ImpSellDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks9999ImpSellDiff());
                      },
                      switchValue: futureState.enableStock9999ImpSellDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock9999ImpDisplay(
                                enableStock9999ImpSellDiff: value));
                      },
                    ),
                    Commons.gapNormal(),
                  ],
                ),Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.darkSlateGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Base Bid rate : 7256',
                            style:
                                Theme.of(context).textTheme.titleSmall!.copyWith(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'High: 7256',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Commons.gapNormal(isHeight: false),
                              Text(
                                'Low : 7256',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    CustomTabTitleRow(
                      titles: const [
                        'Stocks',
                        'Buy difference',
                        'Buying price',
                        'Display',
                      ],
                      backgroundColors: [
                        AppColors.darkGrey,
                        AppColors.darkGrey,
                        AppColors.darkGrey,
                        AppColors.darkGrey,
                      ],
                      textColors: [
                        AppColors.black,
                        AppColors.black,
                        AppColors.black,
                        AppColors.black,
                      ],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock999IndBuyDiff,
                      stockLabel: '999 IND',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks999IndBuyDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks999IndBuyDiff());
                      },
                      switchValue: futureState.enableStock999IndBuyDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock999IndBuyDiffDisplay(
                                enableStock999IndBuyDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock999ImpBuyDiff,
                      stockLabel: '999 IMP',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks999ImpBuyDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks999ImpBuyDiff());
                      },
                      switchValue: futureState.enableStock999ImpBuyDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock999ImpBuyDiffDisplay(
                                enableStock999ImpBuyDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock995IndBuyDiff,
                      stockLabel: '995 IND',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks995IndBuyDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks995IndBuyDiff());
                      },
                      switchValue: futureState.enableStock995IndBuyDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock995IndBuyDiffDisplay(
                                enableStock995IndBuyDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock995ImpBuyDiff,
                      stockLabel: '995 IMP',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks995ImpBuyDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks995ImpBuyDiff());
                      },
                      switchValue: futureState.enableStock995ImpBuyDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock995ImpBuyDiffDisplay(
                                enableStock995ImpBuyDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock9999IndBuyDiff,
                      stockLabel: '999.9 IND',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks9999IndBuyDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks9999IndBuyDiff());
                      },
                      switchValue: futureState.enableStock9999IndBuyDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock9999IndBuyDiffDisplay(
                                enableStock9999IndBuyDiff: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomSellingPriceRow(
                      label: futureState.stock9999ImpBuyDiff,
                      stockLabel: '999.9 IMP',
                      onTapAdd: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(IncrementStocks9999ImpBuyDiff());
                      },
                      onTapSubtract: () {
                        futureContext
                            .read<FutureBloc>()
                            .add(DecrementStocks9999ImpBuyDiff());
                      },
                      switchValue: futureState.enableStock9999ImpBuyDiff,
                      onSwitchChanged: (value) {
                        futureContext.read<FutureBloc>().add(
                            ToggleStock9999ImpBuyDiffDisplay(
                                enableStock9999ImpBuyDiff: value));
                      },
                    ),
                    Commons.gapNormal(),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
