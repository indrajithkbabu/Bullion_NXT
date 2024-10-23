import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:bullionnxtnew/bloc/account/account_bloc.dart';
import 'package:bullionnxtnew/bloc/future/future_bloc.dart';
import 'package:bullionnxtnew/bloc/home/home_screen/home_bloc.dart';
import 'package:bullionnxtnew/bloc/main_screen/mainscreen_bloc.dart';
import 'package:bullionnxtnew/bloc/metal/metal_bloc.dart';
import 'package:bullionnxtnew/bloc/spot/spot_bloc.dart';
import 'package:bullionnxtnew/bloc/watchlist/watch_list_bloc.dart';
import 'package:bullionnxtnew/helpers/app_colors.dart';
import 'package:bullionnxtnew/helpers/app_values.dart';
import 'package:bullionnxtnew/helpers/commons/snackbar.dart';
import 'package:bullionnxtnew/presentation/mainscreen/main_screen.dart';
import 'package:bullionnxtnew/repositories/auth/auth_repository.dart';


enum Flavor {
  dev,
  labs,
  prod,
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void defaultMain(Flavor flavor) async {
  // Bloc.observer = AppBlocObserver();
  // WidgetsFlutterBinding.ensureInitialized();
  // DI.initializeDependencies();

  // final preference = DI.inject<AppPreferences>();
  // await preference.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: snackbarKey,
      title: 'Bullion_nxt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkSlateGrey),
        useMaterial3: true,
      ),
      builder: (context, child) {
        child = EasyLoading.init()(context, child);
        EasyLoading.instance
          ..displayDuration =
              const Duration(milliseconds: AppValues.highDuration)
          ..indicatorType = EasyLoadingIndicatorType.fadingCircle
          ..loadingStyle = EasyLoadingStyle.custom
          ..boxShadow = []
          ..backgroundColor = Colors.transparent
          ..indicatorColor = Colors.transparent
          ..textColor = Colors.black
          ..userInteractions = false
          ..dismissOnTap = false;
        return child;
      },
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => AuthRepositoryImpl( ),
          ),
          // RepositoryProvider(
          //   create: (context) => SubjectRepository(),
          // ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => MainScreenBloc(),
            ),
            BlocProvider(
              create: (context) => AccountBloc(
                authRepositoryImpl: context.read<AuthRepositoryImpl>(),
              ),
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
      ),
    );
  }
}
