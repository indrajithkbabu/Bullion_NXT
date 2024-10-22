import 'package:bullionnxtnew/bloc/spot/spot_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_tab_title_row.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/spot_tab_widgets/spot_custom_input_row.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/spot_tab_widgets/spot_custom_selling_price_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpotTab extends StatefulWidget {
  const SpotTab({super.key});

  @override
  State<SpotTab> createState() => _SpotTabState();
}

class _SpotTabState extends State<SpotTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpotBloc, SpotState>(
      builder: (spotContext, spotState) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        children: [
                          CustomTabTitleRow(
                            titles: const [
                              'Symbols',
                              'Bid',
                              'Ask',
                              'High',
                              'Low'
                            ],
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
                    CustomTabTitleRow(
                      titles: const [
                        'Description',
                        'Gold 999 IND',
                        'Gold 999 IMP',
                      ],
                      backgroundColors: [
                        AppColors.primary,
                        AppColors.primary,
                        AppColors.primary,
                      ],
                      textColors: [
                        AppColors.white,
                        AppColors.white,
                        AppColors.white,
                      ],
                      height: 40,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    Commons.gapVeryMinute(),
                    const SpotCustomInputRow(
                      label: 'Ask',
                      gold999IndValue: '2179.25',
                      gold999ImpValue: '2147.56',
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomInputRow(
                      label: 'Premium',
                      hintGold999IndValue: '0',
                      hintGold999ImpValue: '0',
                      ongold999IndTextFormFieldValueChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            SetPremiumGold999Ind(premiumGold999Ind: value));
                      },
                      ongold999ImpTextFormFieldValueChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            SetPremiumGold999Imp(premiumGold999Imp: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    const SpotCustomInputRow(
                      label: 'Conv',
                      gold999IndValue: '21.725',
                      gold999ImpValue: '21.456',
                    ),
                    Commons.gapVeryMinute(),
                    const SpotCustomInputRow(
                      label: 'INR',
                      gold999IndValue: '82.76',
                      gold999ImpValue: '82.45',
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomInputRow(
                      label: 'Premium on INR',
                      hintGold999IndValue: '0',
                      hintGold999ImpValue: '0',
                      ongold999IndTextFormFieldValueChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            SetPremiumOnINRGold999Ind(
                                premiumOnINRGold999Ind: value));
                      },
                      ongold999ImpTextFormFieldValueChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            SetPremiumOnINRGold999Imp(
                                premiumOnINRGold999Imp: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomInputRow(
                      showRadioButton: true,
                      label: 'Custom tax type',
                      gold999IndRadioValue:
                          spotState.gold999IndCustomTaxTypeRadioValue,
                      onRadioValueGold999IndChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            Gold999IndCustomTaxTypeRadioSelection(
                                gold999IndCustomTaxTypeRadioValue: value ?? 0));
                      },
                      gold999ImpRadioValue:
                          spotState.gold999ImpCustomTaxTypeRadioValue,
                      onRadioValueGold999ImpChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            Gold999ImpCustomTaxTypeRadioSelection(
                                gold999ImpCustomTaxTypeRadioValue: value ?? 0));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomInputRow(
                      label: 'Custom tax',
                      hintGold999IndValue: '0',
                      hintGold999ImpValue: '0',
                      ongold999IndTextFormFieldValueChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            SetCustomTaxGold999Ind(customTaxGold999Ind: value));
                      },
                      ongold999ImpTextFormFieldValueChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            SetCustomTaxGold999Imp(customTaxGold999Imp: value));
                      },
                    ),
                    Commons.gapVeryMinute(),
                    const SpotCustomInputRow(
                      label: 'Tax type %',
                      gold999IndValue: '3.00',
                      gold999ImpValue: '3.00',
                    ),
                    Commons.gapVeryMinute(),
                    const SpotCustomInputRow(
                      label: 'Margin',
                      gold999IndValue: '+ 10',
                      gold999ImpValue: '+ 20',
                    ),
                    Commons.gapVeryMinute(),
                    const SpotCustomInputRow(
                      label: '10 g rate',
                      gold999IndValue: '78000',
                      gold999ImpValue: '67450',
                    ),
                    Commons.gapVeryMinute(),
                    SpotCustomInputRow(
                      label: 'Display',
                      showSwitchButton: true,
                      switchGold999indValue: spotState.enableGold999Ind,
                      switchGold999ImpValue: spotState.enableGold999Imp,
                      onSwitchGold999IndChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            ToggleGold999IndDisplay(enableGold999Ind: value));
                      },
                      onSwitchGold999ImpChanged: (value) {
                        spotContext.read<SpotBloc>().add(
                            ToggleGold999ImpDisplay(enableGold999Imp: value));
                      },
                    ),
                  ],
                ),
              ),
              Commons.gapNormal(),
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
                          '999.9 IND Price : 7256',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          '999.9 IMP Price : 7256',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
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
                    label: spotState.stock999IndSellDiff,
                    stockLabel: '999 IND',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks999IndSellDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks999IndSellDiff());
                    },
                    switchValue: spotState.enableStock999IndSellDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(ToggleStock999IndDisplay(
                          enableStock999IndSellDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock999ImpSellDiff,
                    stockLabel: '999 IMP',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks999ImpSellDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks999ImpSellDiff());
                    },
                    switchValue: spotState.enableStock999ImpSellDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(ToggleStock999ImpDisplay(
                          enableStock999ImpSellDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock995IndSellDiff,
                    stockLabel: '995 IND',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks995IndSellDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks995IndSellDiff());
                    },
                    switchValue: spotState.enableStock995IndSellDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(ToggleStock995IndDisplay(
                          enableStock995IndSellDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock995ImpSellDiff,
                    stockLabel: '995 IMP',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks995ImpSellDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks995ImpSellDiff());
                    },
                    switchValue: spotState.enableStock995ImpSellDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(ToggleStock995ImpDisplay(
                          enableStock995ImpSellDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock9999IndSellDiff,
                    stockLabel: '999.9 IND',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks9999IndSellDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks9999IndSellDiff());
                    },
                    switchValue: spotState.enableStock9999IndSellDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock9999IndDisplay(
                              enableStock9999IndSellDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock9999ImpSellDiff,
                    stockLabel: '999.9 IMP',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks9999ImpSellDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks9999ImpSellDiff());
                    },
                    switchValue: spotState.enableStock9999ImpSellDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock9999ImpDisplay(
                              enableStock9999ImpSellDiff: value));
                    },
                  ),
                  Commons.gapNormal(),
                ],
              ),
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
                    label: spotState.stock999IndBuyDiff,
                    stockLabel: '999 IND',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks999IndBuyDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks999IndBuyDiff());
                    },
                    switchValue: spotState.enableStock999IndBuyDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock999IndBuyDiffDisplay(
                              enableStock999IndBuyDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock999ImpBuyDiff,
                    stockLabel: '999 IMP',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks999ImpBuyDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks999ImpBuyDiff());
                    },
                    switchValue: spotState.enableStock999ImpBuyDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock999ImpBuyDiffDisplay(
                              enableStock999ImpBuyDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock995IndBuyDiff,
                    stockLabel: '995 IND',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks995IndBuyDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks995IndBuyDiff());
                    },
                    switchValue: spotState.enableStock995IndBuyDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock995IndBuyDiffDisplay(
                              enableStock995IndBuyDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock995ImpBuyDiff,
                    stockLabel: '995 IMP',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks995ImpBuyDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks995ImpBuyDiff());
                    },
                    switchValue: spotState.enableStock995ImpBuyDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock995ImpBuyDiffDisplay(
                              enableStock995ImpBuyDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock9999IndBuyDiff,
                    stockLabel: '999.9 IND',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks9999IndBuyDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks9999IndBuyDiff());
                    },
                    switchValue: spotState.enableStock9999IndBuyDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock9999IndBuyDiffDisplay(
                              enableStock9999IndBuyDiff: value));
                    },
                  ),
                  Commons.gapVeryMinute(),
                  SpotCustomSellingPriceRow(
                    label: spotState.stock9999ImpBuyDiff,
                    stockLabel: '999.9 IMP',
                    onTapAdd: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(IncrementStocks9999ImpBuyDiff());
                    },
                    onTapSubtract: () {
                      spotContext
                          .read<SpotBloc>()
                          .add(DecrementStocks9999ImpBuyDiff());
                    },
                    switchValue: spotState.enableStock9999ImpBuyDiff,
                    onSwitchChanged: (value) {
                      spotContext.read<SpotBloc>().add(
                          ToggleStock9999ImpBuyDiffDisplay(
                              enableStock9999ImpBuyDiff: value));
                    },
                  ),
                  Commons.gapNormal(),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
