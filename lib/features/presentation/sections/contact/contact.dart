import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/constant/links.dart';
import 'package:my_portfolio/core/constant/strings.dart';

import 'package:my_portfolio/core/configs/configs.dart';
import 'package:my_portfolio/core/constant/colors.dart';
import 'package:my_portfolio/core/util/constants.dart';
import 'package:my_portfolio/core/util/http_helper.dart';
import 'package:my_portfolio/features/data/models/meta.dart';
import 'package:my_portfolio/features/domain/repositories/general_repository/general_repository.dart';
import 'package:my_portfolio/features/presentation/cubit/general/general_cubit.dart';
import 'package:my_portfolio/features/presentation/widgets/custom_text_heading.dart';
import 'package:screentasia/screentasia.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return BlocBuilder<GeneralCubit, GeneralState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ErrorState) {
          return const Center(
            child: Icon(Icons.close),
          );
        } else if (state is LoadedState) {
          final contact = state.meta.contacts;

          return Column(
            children: [
              const CustomSectionHeading(text: "\nGet in Touch"),
              SizedBox(
                height: 20.h,
              ),

              const CustomSectionSubHeading(
                text:
                    "If you want to avail my services you can contact me at the links below.",
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                decoration: BoxDecoration(
                  gradient: theme.contactCard,
                  borderRadius: BorderRadius.circular(30).r,
                  boxShadow: [blackColorShadow],
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              contactHeadding,
                              style: TextStyle(
                                height: 1.2,
                                fontSize: 30.sp.ap(),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              contactSubHeadding,
                              style: TextStyle(
                                fontSize: 16.sp.ap(),
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () => openURL(whatsapp),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 20.w),
                            decoration: BoxDecoration(
                                gradient: buttonGradi,
                                // border: Border.all(
                                //     width: 2.0, color: theme.primaryColor),
                                borderRadius: BorderRadius.circular(10).r),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 20.sp.ap(),
                                fontWeight: FontWeight.w500,
                                color: textColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        color: Colors.white.withOpacity(0.2), height: 1.h),
                    SizedBox(
                      height: 10.h,
                    ),
                    Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 30.w,
                        runSpacing: 50.h,
                        children: contact!
                            .map((e) => IconButton(
                                  icon: Image.network(
                                    e.icon!,
                                    color: theme.textColor,
                                  ),
                                  onPressed: () => openURL(e.url!),
                                  highlightColor: Colors.white54,
                                  iconSize: 30.sp,
                                ))
                            .toList()),
                  ],
                ),
              ),
              // Space.y!,
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
