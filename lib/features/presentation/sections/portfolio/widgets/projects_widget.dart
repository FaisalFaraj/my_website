import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:my_portfolio/core/configs/others/space.dart';
import 'package:my_portfolio/features/presentation/sections/portfolio/widgets/project_card.dart';
import 'package:my_portfolio/features/presentation/widgets/color_chage_btn.dart';
import 'package:screentasia/screentasia.dart';

import '../../../utils/project_utils.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({
    super.key,
  });

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  String selected_group = 'Mobile';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w.ap(), vertical: 20.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChageButton(
                height: 40.h,
                width: 160.w.ap(),
                fontSize: 18
                    .sp
                    .ap(adaptivePercentage: AdaptivePercentage(mobile: 140)),
                text: 'Mobile',
                onTap: () {
                  setState(() {
                    selected_group = 'Mobile';
                  });
                },
              ),
              ColorChageButton(
                height: 40.h,
                width: 160.w.ap(),
                fontSize: 18
                    .sp
                    .ap(adaptivePercentage: AdaptivePercentage(mobile: 140)),
                text: 'UI/UX',
                onTap: () {
                  setState(() {
                    selected_group = 'UI/UX';
                  });
                },
              ),
              ColorChageButton(
                height: 40.h,
                width: 160.w.ap(),
                fontSize: 18
                    .sp
                    .ap(adaptivePercentage: AdaptivePercentage(mobile: 140)),
                text: 'Web',
                onTap: () {
                  setState(() {
                    selected_group = 'Web';
                  });
                },
              ),
              ColorChageButton(
                height: 40.h,
                width: 160.w.ap(),
                fontSize: 18
                    .sp
                    .ap(adaptivePercentage: AdaptivePercentage(mobile: 140)),
                text: 'Desktop',
                onTap: () {
                  setState(() {
                    selected_group = 'Desktop';
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          CarouselSlider.builder(
            itemCount: projectUtils[selected_group]!.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0).r,
              child: ProjectCard(project: projectUtils[selected_group]![i]),
            ),
            options: CarouselOptions(
              height: 300.h,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }
}
