part of '../services.dart';

class _ServiceCard extends StatefulWidget {
  final Services service;

  const _ServiceCard({required this.service});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        width: 300.w,
        // height: 200.h,
        // height: AppDimensions.normalize(100),
        padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
        decoration: BoxDecoration(
          // gradient: isHover ? pinkpurple : grayBack,
          gradient: isHover ? pinkpurple : theme.serviceCard,
          borderRadius: BorderRadius.circular(15).r,
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: HttpHelper.clean_drive_link(widget.service.icon!),
              height: 75.h,
              width: 75.w,
              fit: BoxFit.contain,
              placeholder: (context, url) => Center(
                  child: Image.asset('assets/images/error_placeholder.png')),
              errorWidget: (context, url, error) =>
                  Center(child: Image.asset('assets/images/placeholder.gif')),
            ),

            SizedBox(
              height: 20.h,
            ),
            // Space.y(3.w)!,
            Text(widget.service.name!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: isHover ? whiteColor : theme.textColor,
                    fontSize: 15.sp)),
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.service.description!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isHover ? whiteColor.withOpacity(0.8) : theme.textColor,
                fontWeight: FontWeight.w200,
                fontSize: 13.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.service.tool!
                    .map((e) => Row(
                          children: [
                            Text(
                              '🛠   ',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(e,
                                style: TextStyle(
                                    color:
                                        isHover ? whiteColor : theme.textColor,
                                    fontSize: 14.sp)),
                          ],
                        ))
                    .toList()),
            // if (Responsive.isMobile(context) || Responsive.isTablet(context))
            //   Expanded(
            //     child: ListView(
            //         padding: EdgeInsets.zero,
            //         shrinkWrap: true,
            //         children: widget.service.tool
            //             .map((e) => Row(
            //                   children: [
            //                     const Text('🛠   '),
            //                     Text(e,
            //                         style: TextStyle(
            //                           color: isHover
            //                               ? whiteColor
            //                               : theme.textColor,
            //                         )),
            //                   ],
            //                 ))
            //             .toList()),
            //   )
          ],
        ),
      ),
    );
  }
}
