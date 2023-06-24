import 'package:flutter/material.dart';
import 'package:my_portfolio/features/presentation/sections/contact/contact.dart';
import 'package:my_portfolio/features/presentation/sections/home/home.dart';
import 'package:my_portfolio/features/presentation/sections/portfolio/portfolio.dart';
import 'package:my_portfolio/features/presentation/sections/services/services.dart';
import 'package:my_portfolio/features/presentation/widgets/footer.dart';

class BodyUtils {
  static List<Widget> views = [
    const HomePage(),
    // About(),
    ServicesSection(),
    const Portfolio(),
    const ContactSection(),
    const Footer(),
  ];
}
