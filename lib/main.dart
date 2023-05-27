import 'package:flutter/material.dart';
import 'my_site.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();
  runApp(const MyPortfolio());
}
