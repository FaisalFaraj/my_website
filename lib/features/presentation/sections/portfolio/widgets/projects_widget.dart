import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/data/models/projects.dart';
import 'package:my_portfolio/features/domain/repositories/general_repository/general_repository.dart';
import 'package:my_portfolio/features/presentation/cubit/general/general_cubit.dart';

import 'package:my_portfolio/features/presentation/sections/portfolio/widgets/project_card.dart';
import 'package:my_portfolio/features/presentation/widgets/color_chage_btn.dart';
import 'package:screentasia/screentasia.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({
    super.key,
  });

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  var selected_group;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralCubit, GeneralState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ErrorState) {
          return const Center(
            child: Icon(Icons.close),
          );
        } else if (state is LoadedState) {
          final projects = state.projects;
          selected_group == null ? projects.mobile : selected_group;
          //TODO
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 30.w.ap(), vertical: 20.h),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColorChageButton(
                      height: 40.h,
                      width: 160.w.ap(),
                      fontSize: 18.sp.ap(
                          adaptivePercentage:
                              const AdaptivePercentage(mobile: 140)),
                      text: 'Mobile',
                      onTap: () {
                        setState(() {
                          selected_group = projects.mobile;
                        });
                      },
                    ),
                    ColorChageButton(
                      height: 40.h,
                      width: 160.w.ap(),
                      fontSize: 18.sp.ap(
                          adaptivePercentage:
                              const AdaptivePercentage(mobile: 140)),
                      text: 'UI/UX',
                      onTap: () {
                        setState(() {
                          selected_group = projects.uiUx;
                        });
                      },
                    ),
                    ColorChageButton(
                      height: 40.h,
                      width: 160.w.ap(),
                      fontSize: 18.sp.ap(
                          adaptivePercentage:
                              const AdaptivePercentage(mobile: 140)),
                      text: 'Web',
                      onTap: () {
                        setState(() {
                          selected_group = projects.web;
                        });
                      },
                    ),
                    ColorChageButton(
                      height: 40.h,
                      width: 160.w.ap(),
                      fontSize: 18.sp.ap(
                          adaptivePercentage:
                              const AdaptivePercentage(mobile: 140)),
                      text: 'Desktop',
                      onTap: () {
                        setState(() {
                          selected_group = projects.desktop;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                CarouselSlider.builder(
                  itemCount: selected_group.length,
                  itemBuilder: (BuildContext context, int itemIndex, int i) =>
                      Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0).r,
                    child: ProjectCard(project: selected_group![i]),
                  ),
                  options: CarouselOptions(
                    height: 300.h,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    enableInfiniteScroll: false,
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
