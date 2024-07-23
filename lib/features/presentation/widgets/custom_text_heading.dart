import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:screentasia/screentasia.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({super.key, required this.text});

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

  const CustomSectionSubHeading({super.key, required this.text});

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
