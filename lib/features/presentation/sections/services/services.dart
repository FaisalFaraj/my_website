import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_portfolio/core/constant/strings.dart';
import 'package:my_portfolio/core/constant/colors.dart';
import 'package:my_portfolio/core/res/responsive.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/util/http_helper.dart';
import 'package:my_portfolio/features/data/models/meta.dart';
import 'package:my_portfolio/features/presentation/cubit/general/meta_cubit.dart';
import 'package:my_portfolio/features/presentation/widgets/custom_text_heading.dart';
import 'package:screentasia/screentasia.dart';

part 'widgets/_services_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetaCubit, MetaState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ErrorState) {
          return const Center(
            child: Icon(Icons.close),
          );
        } else if (state is LoadedState) {
          final services = state.meta.services;

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
                      children: services!
                          .map(
                            (e) => _ServiceCard(service: e),
                          )
                          .toList() as List<Widget>,
                    )
                  : CarouselSlider.builder(
                      itemCount: services!.length,
                      itemBuilder:
                          (BuildContext context, int itemIndex, int i) =>
                              Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.5.w),
                        child: _ServiceCard(service: services![i]),
                      ),
                      options: CarouselOptions(
                        viewportFraction: 0.6,
                        height: 350.h,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 5),
                        enlargeCenterPage: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        enableInfiniteScroll: false,
                      ),
                    )
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
