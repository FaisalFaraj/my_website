import 'package:my_portfolio/core/animations/zoom_animation.dart';
import 'package:my_portfolio/core/changes/img.dart';
import 'package:my_portfolio/core/changes/strings.dart';
import 'package:my_portfolio/core/res/responsive_size.dart';
import 'package:my_portfolio/features/presentation/widgets/color_chage_btn.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:my_portfolio/core/animations/entrance_fader.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:screentasia/screentasia.dart';

import '../../../../core/res/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List<Widget> views = [
      Container(
        // width: 600.w.
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: Responsive.isDesktop(context)
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(hellotag,
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w100,
                    )),
                EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 2),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(StaticImage.hi, height: 40.h),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(yourname,
                style: TextStyle(
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: Responsive.isDesktop(context)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end,
              children: [
                Text("A ",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    )),
                AnimatedTextKit(
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(animationtxt1,
                        speed: const Duration(milliseconds: 50),
                        textStyle: AppText.h2!.copyWith(fontSize: 25.sp)),
                    TyperAnimatedText(animationtxt2,
                        speed: const Duration(milliseconds: 50),
                        textStyle: AppText.h2!.copyWith(fontSize: 5.sp)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 400.w,
              height: 100.h,
              child: Text(miniDescription,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: theme.textColor.withOpacity(0.6),
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            ColorChageButton(
              height: 55.h,
              width: 135.w,
              fontSize: 15.sp,
              text: 'download cv',
              onTap: () {
                // html.window.open(resume, "pdf");
              },
            ),
          ],
        ),
      ),
      const ZoomAnimations(),
    ];
    return Wrap(
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.up,
      spacing: 260.w.ap(),
      children: views,
    );
  }
}
