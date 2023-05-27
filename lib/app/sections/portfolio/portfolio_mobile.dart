import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/utils/project_utils.dart';
import 'package:my_portfolio/app/widgets/color_chage_btn.dart';
import 'package:my_portfolio/app/widgets/custom_text_heading.dart';
import 'package:my_portfolio/changes/links.dart';
import 'package:my_portfolio/changes/strings.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:sizer/sizer.dart';

import 'widgets/project_card.dart';
import 'widgets/projects_widget.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nProjects"),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: portfolioSubHeading),
        ),
        ProjectsWidget(),
        Space.y(3.w)!,
        OutlinedButton(
          onPressed: () => openURL(gitHub),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
