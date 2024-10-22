import 'package:bullionnxtnew/bloc/account/account_bloc.dart';
import 'package:bullionnxtnew/bloc/future/future_bloc.dart';
import 'package:bullionnxtnew/bloc/home/home_screen/home_bloc.dart';
import 'package:bullionnxtnew/bloc/main_screen/mainscreen_bloc.dart';
import 'package:bullionnxtnew/bloc/metal/metal_bloc.dart';
import 'package:bullionnxtnew/bloc/spot/spot_bloc.dart';
import 'package:bullionnxtnew/bloc/watchlist/watch_list_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/presentation/mainscreen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bullion_nxt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkSlateGrey),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MainScreenBloc(),
          ),
          BlocProvider(
            create: (context) => AccountBloc(),
          ),
          BlocProvider(
            create: (context) => HomeBloc(),
          ),
          BlocProvider(
            create: (context) => WatchListBloc(),
          ),
          BlocProvider(
            create: (context) => MetalBloc(),
          ),
          BlocProvider(
            create: (context) => SpotBloc(),
          ),
          BlocProvider(
            create: (context) => FutureBloc(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
