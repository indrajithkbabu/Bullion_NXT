import 'package:bullionnxtnew/bloc/main_screen/mainscreen_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/future_tab.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/manual_tab.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/metals_tab.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/spot_tab.dart';
import 'package:bullionnxtnew/storage/app_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketGoldRateConfig extends StatelessWidget {
  const MarketGoldRateConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkSlateGrey,
          actions: [
            GestureDetector(
              onTap: () {
                SecureStorageHelper.shared.removeToken();
                // context.read<AccountBloc>().add(ClearDataEvent());
                context
                  .read<MainScreenBloc>()
                  .add(SetBottomBarIndexEvent(index: 0));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.logout,
                  color: AppColors.white,
                ),
              ),
            )
          ],
          bottom: TabBar(
            labelColor: AppColors.white,
            labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
            unselectedLabelColor: AppColors.cadetBlue,
            indicatorColor: AppColors.transparentColor,
            automaticIndicatorColorAdjustment: true,
            tabs: const [
              Tab(text: 'Future'),
              Tab(text: 'Spot'),
              Tab(text: 'Manual'),
              Tab(text: 'Metals'),
            ],
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: const TabBarView(
            children: [
              FutureTab(), // Widget for the Future tab
              SpotTab(), // Widget for the Spot tab
              ManualTab(), // Widget for the Manual tab
              MetalsTab(), // Widget for the Metals tab
            ],
          ),
        ),
      ),
    );
  }
}
