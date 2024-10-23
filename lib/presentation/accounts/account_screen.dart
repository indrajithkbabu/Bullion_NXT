import 'package:bullionnxtnew/bloc/account/account_bloc.dart';
import 'package:bullionnxtnew/presentation/accounts/login_screen.dart';
import 'package:bullionnxtnew/presentation/accounts/signup_screen.dart';
import 'package:bullionnxtnew/presentation/market_gold_rate_setup/market_gold_rate_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (accountContext, accountState) {
        return  accountState.hasToken? const MarketGoldRateConfig(): accountState.isLogin ?? false
            ? const Loginscreen()
            : const SignUpScreen();
      },
    );
  }
}



