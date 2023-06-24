import 'package:flutter/material.dart';
import 'my_site.dart';
import 'package:url_strategy/url_strategy.dart';

//TODO add project preview
//TODO add my new projects

//TODO replace Future Builder
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();
  runApp(const MyPortfolio());
}
