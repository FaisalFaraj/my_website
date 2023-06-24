import 'package:my_portfolio/core/constant/img.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:my_portfolio/core/util/http_helper.dart';
import 'package:my_portfolio/features/presentation/widgets/custom_outline.dart';
import 'package:screentasia/screentasia.dart';

class ZoomAnimations extends StatefulWidget {
  const ZoomAnimations({Key? key}) : super(key: key);

  @override
  State<ZoomAnimations> createState() => _ZoomAnimationsState();
}

class _ZoomAnimationsState extends State<ZoomAnimations>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    sizeAnimation = Tween(begin: 0.0, end: 0.2).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.40, 0.75, curve: Curves.easeOut)));
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
    //
    _controller2 = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).animate(
      CurvedAnimation(
        parent: _controller2,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SizedBox(
      width: 300.w,
      height: 300.h,
      child: AlignTransition(
        alignment: _alignAnimation,
        child: CustomOutline(
          strokeWidth: 5.w,
          radius: 500.r,
          padding: const EdgeInsets.all(5).r,
          width: 1000.w * sizeAnimation.value,
          height: 1000.h * sizeAnimation.value,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.secondaryColor,
                theme.secondaryColor.withOpacity(0),
                theme.primaryColor.withOpacity(0.1),
                theme.primaryColor
              ],
              stops: const [
                0.2,
                0.4,
                0.6,
                1
              ]),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.8),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomLeft,
                  image: NetworkImage(
                      HttpHelper.clean_drive_link(StaticImage.profile_image))),
            ),
          ),
        ),
      ),
    );
  }
}
