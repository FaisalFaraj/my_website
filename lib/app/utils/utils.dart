import 'package:flutter/material.dart';
import 'package:my_portfolio/app/sections/contact/contact.dart';
import 'package:my_portfolio/app/sections/home/home.dart';
import 'package:my_portfolio/app/sections/portfolio/portfolio.dart';
import 'package:my_portfolio/app/sections/services/services.dart';
import 'package:my_portfolio/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
