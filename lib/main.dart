import 'package:flutter/material.dart';
import 'my_site.dart';
import 'package:url_strategy/url_strategy.dart';

//TODO update project archetucture
//TODO update backgroudn image
//TODO add CV url to download my cv button
//TODO add project preview

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();
  runApp(const MyPortfolio());
}
