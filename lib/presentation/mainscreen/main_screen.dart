import 'package:bullionnxtnew/bloc/account/account_bloc.dart';
import 'package:bullionnxtnew/bloc/main_screen/mainscreen_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/assets.dart';
import 'package:bullionnxtnew/helpers/commons/common_functions.dart';
import 'package:bullionnxtnew/helpers/widgets/svg_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainScreenBloc, MainScreenState>(
        builder: (mainScreenContext, mainScreenState) {
          return Commons.appPages[mainScreenState.selectedIndex];
        },
      ),
      bottomNavigationBar: BlocBuilder<MainScreenBloc, MainScreenState>(
        builder: (mainScreenContext, mainScreenState) {
          return BottomNavigationBar(
            backgroundColor: AppColors.darkSlateGrey,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgCustom(
                  asset: Assets.assetsIconsIcMarket,
                  semanticsLabel: 'Market',
                  colorFilter: ColorFilter.mode(
                    mainScreenState.selectedIndex == 0
                        ? AppColors.white
                        : AppColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Market',
              ),
              BottomNavigationBarItem(
                icon: SvgCustom(
                  asset: Assets.assetsIconsIcWatchlist,
                  semanticsLabel: 'Watchlist',
                  colorFilter: ColorFilter.mode(
                    mainScreenState.selectedIndex == 1
                        ? AppColors.white
                        : AppColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Watchlist',
              ),
              BottomNavigationBarItem(
                icon: SvgCustom(
                  asset: Assets.assetsIconsIcAccount,
                  semanticsLabel: 'Account',
                  colorFilter: ColorFilter.mode(
                    mainScreenState.selectedIndex == 2
                        ? AppColors.white
                        : AppColors.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Account',
              ),
            ],
            currentIndex: mainScreenState.selectedIndex,
            selectedItemColor: AppColors.white,
            unselectedItemColor: AppColors.primary,
            onTap: (value) {
              mainScreenContext
                  .read<MainScreenBloc>()
                  .add(SetBottomBarIndexEvent(index: value));

                  //reset login sstate
                   context.read<AccountBloc>().add(ResetLoginStateEvent());
            },
          );
        },
      ),
    );
  }
}
