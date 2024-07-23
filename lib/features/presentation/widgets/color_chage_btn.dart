import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constant/colors.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:screentasia/screentasia.dart';

class ColorChageButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  final double width;
  final double height;
  final double fontSize;
  const ColorChageButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.height,
      required this.width,
      required this.fontSize});

  @override
  State<ColorChageButton> createState() => _ColorChageButtonState();
}

class _ColorChageButtonState extends State<ColorChageButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);

    return Stack(
      children: [
        if (!isHover)
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              border: Border.all(color: theme.textColor, width: 1.5.w),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: widget.height,
          width: _animatedWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            gradient: pinkpurple,
          ),
        ),
        InkWell(
          onHover: (value) {
            setState(() {
              isHover = !isHover;
              _animatedWidth = value ? widget.width : 0.0;
            });
          },
          onTap: () {
            setState(() => _animatedWidth = widget.width);
            widget.onTap();
          },
          child: SizedBox(
            height: widget.height,
            width: widget.width,
            child: Center(
              child: Text(
                widget.text.toUpperCase(),
                style: TextStyle(
                    color: theme.textColor, fontSize: widget.fontSize),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
