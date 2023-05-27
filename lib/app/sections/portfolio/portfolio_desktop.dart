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

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nProjects"),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: portfolioSubHeading),
          ProjectsWidget(),
          Space.y(3.w)!,
          OutlinedButton(
            onPressed: () => openURL(gitHub),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'See More',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
