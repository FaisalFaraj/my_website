import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/changes/links.dart';

import 'package:my_portfolio/core/configs/app.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/constant/colors.dart';
import 'package:my_portfolio/core/constant/links.dart';
import 'package:my_portfolio/core/providers/drawer_provider.dart';
import 'package:my_portfolio/core/providers/scroll_provider.dart';

import 'package:my_portfolio/core/res/responsive.dart';
import 'package:my_portfolio/core/theme/cubit/theme_cubit.dart';
import 'package:my_portfolio/features/presentation/utils/navbar_utils.dart';
import 'package:my_portfolio/features/presentation/utils/utils.dart';
import 'package:my_portfolio/features/presentation/widgets/arrow_on_top.dart';
import 'package:my_portfolio/features/presentation/widgets/color_chage_btn.dart';
import 'package:my_portfolio/features/presentation/widgets/navbar_actions_button.dart';
import 'package:my_portfolio/features/presentation/widgets/navbar_logo.dart';
import 'package:provider/provider.dart';
import 'package:screentasia/screentasia.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/util/constants.dart';
part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: const Responsive(
          desktop: _NavbarDesktop(),
          mobile: _NavBarTablet(),
          tablet: _NavBarTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
                top: 140,
                left: -88,
                child: Container(
                  height: 235.h,
                  width: 166.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200.w, sigmaY: 200.h),
                    child: Container(
                      height: 166.h,
                      width: 166.w,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -100,
                child: Container(
                  height: 100.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 500.w,
                      sigmaY: 500.h,
                    ),
                    child: Container(
                      height: 200.h,
                      width: 200.w,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              if (!state.isDarkThemeOn)
                Align(
                    alignment: Alignment.center,
                    // BG01.png
                    child: Image.asset(
                      'assets/images/background_image.jpg',
                      width: 100.wp,
                      height: 100.hp,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                    )),
              _Body(),
              const ArrowOnTop()
            ],
          );
        },
      ),
    );
  }
}
