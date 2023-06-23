import 'package:flutter/material.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/configs/connection/bloc/connected_bloc.dart';
import 'package:my_portfolio/core/configs/connection/network_check.dart';
import 'package:my_portfolio/core/providers/drawer_provider.dart';
import 'package:my_portfolio/core/providers/scroll_provider.dart';
import 'package:my_portfolio/core/theme/cubit/theme_cubit.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screentasia/screentasia.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return ScreentasiaInit(
              adaptiveFrom: AdaptiveFrom.desktop,
              adaptivePercentage: AdaptivePercentage(mobile: 220),
              builder: (context, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Faisal',
                  theme: AppTheme.themeData(state.isDarkThemeOn, context),
                  initialRoute: "/",
                  routes: {"/": (context) => const NChecking()},
                );
              });
        }),
      ),
    );
  }
}
