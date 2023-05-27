import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/sections/portfolio/widgets/project_card.dart';
import 'package:my_portfolio/app/widgets/color_chage_btn.dart';
import 'package:my_portfolio/core/configs/others/space.dart';
import 'package:sizer/sizer.dart';

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
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorChageButton(
                height: 40,
                width: MediaQuery.of(context).size.width / 8,
                text: 'Mobile',
                onTap: () {
                  setState(() {
                    selected_group = 'Mobile';
                  });
                },
              ),
              ColorChageButton(
                height: 40,
                width: MediaQuery.of(context).size.width / 8,
                text: 'UI/UX',
                onTap: () {
                  setState(() {
                    selected_group = 'UI/UX';
                  });
                },
              ),
              ColorChageButton(
                height: 40,
                width: MediaQuery.of(context).size.width / 8,
                text: 'Web',
                onTap: () {
                  setState(() {
                    selected_group = 'Web';
                  });
                },
              ),
              ColorChageButton(
                height: 40,
                width: MediaQuery.of(context).size.width / 8,
                text: 'Desktop',
                onTap: () {
                  setState(() {
                    selected_group = 'Desktop';
                  });
                },
              ),
            ],
          ),
          Space.y(5.w)!,
          CarouselSlider.builder(
            itemCount: projectUtils[selected_group]!.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ProjectCard(project: projectUtils[selected_group]![i]),
            ),
            options: CarouselOptions(
              height: height * 0.4,
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
