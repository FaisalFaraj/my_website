import 'dart:async';

import 'package:my_portfolio/features/data/data_sources/general/general_data_source.dart';
import 'package:my_portfolio/features/data/models/meta.dart';
import 'package:my_portfolio/features/data/models/projects.dart';

class GeneralRepository {
  final GeneralLocalRemoteDataSource? localRemoteDataSource =
      GeneralLocalRemoteDataSource();

  Future<Projects> fetchProjectsList() async {
    final data = await localRemoteDataSource!.fetchProjectsList();

    return data;
  }

  Future<Meta> fetchMeta() async {
    final data = await localRemoteDataSource!.fetchMeta();

    return data;
  }
}
