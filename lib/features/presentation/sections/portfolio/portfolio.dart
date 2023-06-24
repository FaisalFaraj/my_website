import 'package:my_portfolio/core/constant/links.dart';
import 'package:my_portfolio/core/constant/strings.dart';

import 'package:my_portfolio/core/util/constants.dart';
import 'package:my_portfolio/features/presentation/widgets/custom_text_heading.dart';
import 'package:screentasia/screentasia.dart';

import 'widgets/projects_widget.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(text: "\nProjects"),
        SizedBox(
          height: 30.h,
        ),
        CustomSectionSubHeading(text: portfolioSubHeading),
        const ProjectsWidget(),
        SizedBox(
          height: 50.h,
        ),
        OutlinedButton(
          onPressed: () => openURL(gitHub),
          child: Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
