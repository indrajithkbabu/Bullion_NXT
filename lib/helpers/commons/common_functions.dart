import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/presentation/accounts/account_screen.dart';
import 'package:bullionnxtnew/presentation/home/home_screen.dart';
import 'package:bullionnxtnew/presentation/watchlist/watchlist_screen.dart';
import 'package:flutter/material.dart';

class Commons {
  Commons._();

  static final List<Widget> appPages = [
    HomeScreen(),
    const WatchlistScreen(),
    const AccountScreen(),
  ];

  static final List<String> sellOptionsList = ['High', 'Low'];
  static final List<String> buyOptionsList = ['High', 'Low'];
  static final List<String> timePeriodList = [
    '0-1',
    '1-2',
    '2-3',
    '3-4',
    '4-5',
    '5-7',
  ];
  static final List<String> goldWeightList = [
    '100 g',
    '200 g',
    '500 g',
    '1000 g',
    '2000 g',
    '5000 g',
    '10000 g',
  ];

  static final List<String> locationList = [
    'Bangalore,IND',
    'Chennai,IND',
    'Mumbai,IND',
    'Thrissur,IND',
  ];

  ///2
  static Widget gapVeryMinute({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapVeryMinute : 0,
      width: isHeight ? 0 : AppValues.gapVeryMinute,
    );
  }

  ///5
  static Widget gapMinute({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapMinute : 0,
      width: isHeight ? 0 : AppValues.gapMinute,
    );
  }

  /// 100
  static Widget gapLarge({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapLarge : 0,
      width: isHeight ? 0 : AppValues.gapLarge,
    );
  }

  /// 150
  static Widget gapVeryLarge({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapVeryLarge : 0,
      width: isHeight ? 0 : AppValues.gapVeryLarge,
    );
  }

  /// 20
  static Widget gapNormal({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapNormal : 0,
      width: isHeight ? 0 : AppValues.gapNormal,
    );
  }

  /// 15
  static Widget gapMedium({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapMedium : 0,
      width: isHeight ? 0 : AppValues.gapMedium,
    );
  }

  /// 12
  static Widget gapSmall({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapSmall : 0,
      width: isHeight ? 0 : AppValues.gapSmall,
    );
  }

  /// 10
  static Widget gapVerySmall({bool isHeight = true}) {
    return SizedBox(
      height: isHeight ? AppValues.gapVerySmall : 0,
      width: isHeight ? 0 : AppValues.gapVerySmall,
    );
  }
}
