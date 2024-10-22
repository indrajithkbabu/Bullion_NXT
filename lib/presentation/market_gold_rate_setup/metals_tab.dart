import 'package:bullionnxtnew/bloc/metal/metal_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/metals_tab_widgets/metal_custom_input_row.dart';
import 'package:bullionnxtnew/helpers/widgets/custom_tab_title_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MetalsTab extends StatelessWidget {
  const MetalsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetalBloc, MetalState>(
      builder: (metalContext, metalState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Commons.gapMinute(),
              // const MetalTabTitleRow(),
              CustomTabTitleRow(
                titles: const [
                  'Metals',
                  'Sell diff',
                  'Buy diff',
                  'T+',
                  'Display'
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
              MetalCustomInputRow(
                label: '100 g',
                sellDiffValue: metalState.sellDiff100g == ''
                    ? '0'
                    : metalState.sellDiff100g,
                onSellDiffChanged: (value) {
                  metalContext
                      .read<MetalBloc>()
                      .add(SetSellDiff100g(sellDiff100g: value));
                },
                buyDiffValue:
                    metalState.buyDiff100g == '' ? '0' : metalState.buyDiff100g,
                onBuyDiffChanged: (value) {
                  metalContext
                      .read<MetalBloc>()
                      .add(SetBuyDiff100g(buyDiff100g: value));
                },
                timePeriodValue: metalState.timePeriod100g == ''
                    ? '0'
                    : metalState.timePeriod100g,
                onTimePeriodChanged: (value) {
                  metalContext
                      .read<MetalBloc>()
                      .add(SelectTimePeriod100g(timePeriod100g: value ?? ''));
                },
                switchValue: metalState.is100gEnabled,
                onSwitchChanged: (value) {
                  metalContext
                      .read<MetalBloc>()
                      .add(Toggle100gSwitch(is100gEnabled: value));
                },
              ),
              Commons.gapVeryMinute(),
              MetalCustomInputRow(
                label: '200 g',
                sellDiffValue: metalState.sellDiff200g == ''
                    ? '0'
                    : metalState.sellDiff200g,
                onSellDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetSellDiff200g(
                      sellDiff200g: value)); // Custom event for 200g
                },
                buyDiffValue:
                    metalState.buyDiff200g == '' ? '0' : metalState.buyDiff200g,
                onBuyDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetBuyDiff200g(
                      buyDiff200g: value)); // Custom event for 200g
                },
                timePeriodValue: metalState.timePeriod200g == ''
                    ? '0'
                    : metalState.timePeriod200g,
                onTimePeriodChanged: (value) {
                  metalContext.read<MetalBloc>().add(SelectTimePeriod200g(
                      timePeriod200g: value ?? '')); // Custom event for 200g
                },
                switchValue: metalState.is200gEnabled,
                onSwitchChanged: (value) {
                  metalContext.read<MetalBloc>().add(Toggle200gSwitch(
                      is200gEnabled: value)); // Custom event for 200g
                },
              ),
              Commons.gapVeryMinute(),
              MetalCustomInputRow(
                label: '500 g',
                sellDiffValue: metalState.sellDiff500g == ''
                    ? '0'
                    : metalState.sellDiff500g,
                onSellDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetSellDiff500g(
                      sellDiff500g: value)); // Custom event for 500g
                },
                buyDiffValue:
                    metalState.buyDiff500g == '' ? '0' : metalState.buyDiff500g,
                onBuyDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetBuyDiff500g(
                      buyDiff500g: value)); // Custom event for 500g
                },
                timePeriodValue: metalState.timePeriod500g == ''
                    ? '0'
                    : metalState.timePeriod500g,
                onTimePeriodChanged: (value) {
                  metalContext.read<MetalBloc>().add(SelectTimePeriod500g(
                      timePeriod500g: value ?? '')); // Custom event for 500g
                },
                switchValue: metalState.is500gEnabled,
                onSwitchChanged: (value) {
                  metalContext.read<MetalBloc>().add(Toggle500gSwitch(
                      is500gEnabled: value)); // Custom event for 500g
                },
              ),
              Commons.gapVeryMinute(),
              MetalCustomInputRow(
                label: '1 kg',
                sellDiffValue:
                    metalState.sellDiff1kg == '' ? '0' : metalState.sellDiff1kg,
                onSellDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetSellDiff1kg(
                      sellDiff1kg: value)); // Custom event for 1kg
                },
                buyDiffValue:
                    metalState.buyDiff1kg == '' ? '0' : metalState.buyDiff1kg,
                onBuyDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(
                      SetBuyDiff1kg(buyDiff1kg: value)); // Custom event for 1kg
                },
                timePeriodValue: metalState.timePeriod1kg == ''
                    ? '0'
                    : metalState.timePeriod1kg,
                onTimePeriodChanged: (value) {
                  metalContext.read<MetalBloc>().add(SelectTimePeriod1kg(
                      timePeriod1kg: value ?? '')); // Custom event for 1kg
                },
                switchValue: metalState.is1kgEnabled,
                onSwitchChanged: (value) {
                  metalContext.read<MetalBloc>().add(Toggle1kgSwitch(
                      is1kgEnabled: value)); // Custom event for 1kg
                },
              ),
              Commons.gapVeryMinute(),
              MetalCustomInputRow(
                label: '2 kg',
                sellDiffValue:
                    metalState.sellDiff2kg == '' ? '0' : metalState.sellDiff2kg,
                onSellDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetSellDiff2kg(
                      sellDiff2kg: value)); // Custom event for 2kg
                },
                buyDiffValue:
                    metalState.buyDiff2kg == '' ? '0' : metalState.buyDiff2kg,
                onBuyDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(
                      SetBuyDiff2kg(buyDiff2kg: value)); // Custom event for 2kg
                },
                timePeriodValue: metalState.timePeriod2kg == ''
                    ? '0'
                    : metalState.timePeriod2kg,
                onTimePeriodChanged: (value) {
                  metalContext.read<MetalBloc>().add(SelectTimePeriod2kg(
                      timePeriod2kg: value ?? '')); // Custom event for 2kg
                },
                switchValue: metalState.is2kgEnabled,
                onSwitchChanged: (value) {
                  metalContext.read<MetalBloc>().add(Toggle2kgSwitch(
                      is2kgEnabled: value)); // Custom event for 2kg
                },
              ),
              Commons.gapVeryMinute(),
              MetalCustomInputRow(
                label: '5 kg',
                sellDiffValue:
                    metalState.sellDiff5kg == '' ? '0' : metalState.sellDiff5kg,
                onSellDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetSellDiff5kg(
                      sellDiff5kg: value)); // Custom event for 5kg
                },
                buyDiffValue:
                    metalState.buyDiff5kg == '' ? '0' : metalState.buyDiff5kg,
                onBuyDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(
                      SetBuyDiff5kg(buyDiff5kg: value)); // Custom event for 5kg
                },
                timePeriodValue: metalState.timePeriod5kg == ''
                    ? '0'
                    : metalState.timePeriod5kg,
                onTimePeriodChanged: (value) {
                  metalContext.read<MetalBloc>().add(SelectTimePeriod5kg(
                      timePeriod5kg: value ?? '')); // Custom event for 5kg
                },
                switchValue: metalState.is5kgEnabled,
                onSwitchChanged: (value) {
                  metalContext.read<MetalBloc>().add(Toggle5kgSwitch(
                      is5kgEnabled: value)); // Custom event for 5kg
                },
              ),
              Commons.gapVeryMinute(),
              MetalCustomInputRow(
                label: '10 kg',
                sellDiffValue: metalState.sellDiff10kg == ''
                    ? '0'
                    : metalState.sellDiff10kg,
                onSellDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetSellDiff10kg(
                      sellDiff10kg: value)); // Custom event for 10kg
                },
                buyDiffValue:
                    metalState.buyDiff10kg == '' ? '0' : metalState.buyDiff10kg,
                onBuyDiffChanged: (value) {
                  metalContext.read<MetalBloc>().add(SetBuyDiff10kg(
                      buyDiff10kg: value)); // Custom event for 10kg
                },
                timePeriodValue: metalState.timePeriod10kg == ''
                    ? '0'
                    : metalState.timePeriod10kg,
                onTimePeriodChanged: (value) {
                  metalContext.read<MetalBloc>().add(SelectTimePeriod10kg(
                      timePeriod10kg: value ?? '')); // Custom event for 10kg
                },
                switchValue: metalState.is10kgEnabled,
                onSwitchChanged: (value) {
                  metalContext.read<MetalBloc>().add(Toggle10kgSwitch(
                      is10kgEnabled: value)); // Custom event for 10kg
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
