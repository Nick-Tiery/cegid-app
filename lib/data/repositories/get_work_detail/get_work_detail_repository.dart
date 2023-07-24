import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/use_cases/get_work_detail/get_work_detail_use_case.dart';
import '../../datasources/get_work_detail/get_work_detail_datasource.dart';
import '../../models/work_detail/work_detail_model.dart';

class GetWorkDetailRepositoryImpl implements GetWorkDetailRepository {
  final GetWorkDetailDatasourceImpl getWorkDetailDatasource;

  GetWorkDetailRepositoryImpl({
    required this.getWorkDetailDatasource,
  });

  @override
  Future<(bool?, WorkDetailModel?, String?)> getWorkDetail(
      {String? idWork}) async {
    bool? state;
    WorkDetailModel? workDetail;
    String? error;

    try {
      (state, workDetail, error) =
          await getWorkDetailDatasource.getWorkDetail(idWork: idWork);
    } catch (exception) {
      debugPrint('Get Work Detail Repository Impl: $exception');
    }

    return (state, workDetail, error);
  }
}
