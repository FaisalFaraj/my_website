import 'package:flutter/material.dart';

import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/constant/colors.dart';
import 'package:my_portfolio/core/res/responsive.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:my_portfolio/features/presentation/utils/project_utils.dart';
import 'package:screentasia/screentasia.dart';

class ProjectCard extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => openURL(widget.project.links),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w),
        width: 300.w,
        height: 36.h,
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : grayBack,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: isHover ? const EdgeInsets.all(20).r : EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInImage(
                    height: 45.h,
                    image: NetworkImage(
                      widget.project.icons,
                    ),
                    placeholder:
                        AssetImage('assets/images/error_placeholder.png'),
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Center(
                          child: Image.asset('assets/images/placeholder.gif'));
                    },
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    widget.project.titles,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    widget.project.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.1 : 1.0,
              child: Container(
                width: 30.w,
                height: 36.h,
                child: FadeInImage(
                  height: 36.h,
                  image: NetworkImage(widget.project.banners),
                  placeholder:
                      AssetImage('assets/images/error_placeholder.png'),
                  imageErrorBuilder: (context, error, stackTrace) {
                    return Center(
                        child: Image.asset('assets/images/placeholder.gif'));
                  },
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
