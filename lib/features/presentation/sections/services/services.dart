import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:my_portfolio/core/changes/strings.dart';
import 'package:my_portfolio/core/constant/colors.dart';
import 'package:my_portfolio/core/res/responsive.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/features/presentation/utils/services_utils.dart';
import 'package:my_portfolio/features/presentation/widgets/custom_text_heading.dart';
import 'package:screentasia/screentasia.dart';

part 'widgets/_services_card.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(text: '\nWhat I can do?'),
        SizedBox(
          height: 20.h,
        ),
        CustomSectionSubHeading(text: servicesSubHeading),
        SizedBox(
          height: 30.h,
        ),
        Responsive.isDesktop(context)
            ? Wrap(
                spacing: 30.w,
                runSpacing: 30.h,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: servicesUtils
                    .asMap()
                    .entries
                    .map(
                      (e) => _ServiceCard(service: e.value),
                    )
                    .toList(),
              )
            : CarouselSlider.builder(
                itemCount: servicesUtils.length,
                itemBuilder: (BuildContext context, int itemIndex, int i) =>
                    Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.5.w),
                  child: _ServiceCard(service: servicesUtils[i]),
                ),
                options: CarouselOptions(
                  viewportFraction: 0.6,
                  height: 350.h,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: false,
                ),
              )
      ],
    );
  }
}
