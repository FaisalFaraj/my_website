import 'package:my_portfolio/core/configs/configs.dart';
import 'package:screentasia/screentasia.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);

    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: 32.sp,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("< ", style: textSty),
        Text("Faisal", style: textSty),
        Text(
          " />",
          style: textSty,
        )
      ],
    );
  }
}
