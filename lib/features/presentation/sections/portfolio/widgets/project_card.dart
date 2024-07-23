import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:my_portfolio/core/constant/colors.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:my_portfolio/core/util/http_helper.dart';
import 'package:screentasia/screentasia.dart';

class ProjectCard extends StatefulWidget {
  final project;

  const ProjectCard({super.key, required this.project});
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
                  CachedNetworkImage(
                    imageUrl: HttpHelper.clean_drive_link(widget.project.icons),
                    height: 45.h,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Center(
                        child:
                            Image.asset('assets/images/error_placeholder.png')),
                    errorWidget: (context, url, error) => Center(
                        child: Image.asset('assets/images/placeholder.gif')),
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
              child:
                  // FadeInImage(
                  //   height: 36.h,
                  //   width: 30.w,
                  //   fit: BoxFit.cover,
                  //   image: NetworkImage(widget.project.banners),
                  //   placeholder:
                  //       AssetImage('assets/images/error_placeholder.png'),
                  //   imageErrorBuilder: (context, error, stackTrace) {
                  //     return Center(
                  //       child: Image.asset('assets/images/placeholder.gif',
                  //           fit: BoxFit.fitWidth),
                  //     );
                  //   },
                  // )
                  //  Image.network(widget.project.banners,
                  //     height: 36.h,
                  //     width: 30.w,
                  //     fit: BoxFit.cover,
                  //     loadingBuilder: (context, child, loadingProgress) => Center(
                  //         child:
                  //             Image.asset('assets/images/error_placeholder.png')),
                  //     errorBuilder: (context, error, stackTrace) => Center(

                  //         child: Image.asset('assets/images/placeholder.gif'))),

                  CachedNetworkImage(
                imageUrl: HttpHelper.clean_drive_link(widget.project.banners),
                height: 36.h,
                width: 30.w,
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                    child: Image.asset('assets/images/error_placeholder.png')),
                errorWidget: (context, url, error) =>
                    Center(child: Image.asset('assets/images/placeholder.gif')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
