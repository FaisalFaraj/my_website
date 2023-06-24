import 'package:my_portfolio/core/configs/configs.dart';
import 'package:screentasia/screentasia.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 56.sp),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: theme.textColor.withOpacity(0.6),
        fontSize: 18.sp,
      ),
    );
  }
}
