import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  // screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width >= 1024) {
      return desktop;
    } else if (width < 1024 && width >= 600) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
