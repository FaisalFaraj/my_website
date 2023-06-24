import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:my_portfolio/features/data/models/meta.dart';
import 'package:my_portfolio/features/data/models/projects.dart';

class GeneralLocalRemoteDataSource {
  Future<Projects> fetchProjectsList() async {
    final String response =
        await rootBundle.loadString('assets/data/projects.json');
    Map<String, dynamic> data = await json.decode(response);

    Projects items = Projects.fromJson(data);

    return items;
  }

  Future<Meta> fetchMeta() async {
    final String response =
        await rootBundle.loadString('assets/data/meta.json');
    Map<String, dynamic> data = await json.decode(response);

    Meta items = Meta.fromJson(data);

    return items;
  }
}
