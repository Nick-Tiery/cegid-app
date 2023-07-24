import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/use_cases/get_all_works/get_all_works_use_case.dart';
import '../../datasources/get_all_works/get_all_works_datasource.dart';
import '../../models/work/work_today_model.dart';

class GetAllWorksRepositoryImpl implements GetAllWorksRepository {
  final GetAllWorksDatasourceImpl getAllWorksDatasource;

  GetAllWorksRepositoryImpl({
    required this.getAllWorksDatasource,
  });

  @override
  Future<(bool?, List<WorkTodayModel>?, String?)> getAllWorks() async {
    bool? state;
    List<WorkTodayModel>? listWorks;
    String? error;

    try {
      (state, listWorks, error) = await getAllWorksDatasource.getAllWorks();
    } catch (exception) {
      debugPrint('Get All Works Repository Impl: $exception');
    }

    return (state, listWorks, error);
  }
}
