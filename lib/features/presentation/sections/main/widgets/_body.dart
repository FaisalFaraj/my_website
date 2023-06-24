part of '../main_section.dart';

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 80),
      child: ScrollablePositionedList.separated(
        padding: EdgeInsets.symmetric(horizontal: 130.w.ap()),
        separatorBuilder: (context, index) {
          return SizedBox(height: Responsive.isDesktop(context) ? 40.h : 40.h);
        },
        itemCount: BodyUtils.views.length,
        itemBuilder: (context, index) => BodyUtils.views[index],
        itemScrollController: scrollProvider.itemScrollController,
      ),
    );
  }
}
