import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/use_cases/get_operations/get_operations_use_case.dart';
import '../../datasources/get_operations/get_operations_datasource.dart';
import '../../models/operation/operation_model.dart';

class GetOperationsRepositoryImpl implements GetOperationsRepository {
  final GetOperationsDatasourceImpl getOperationsDatasource;

  GetOperationsRepositoryImpl({
    required this.getOperationsDatasource,
  });

  @override
  Future<(bool?, List<OperationModel>?, String?)> getOperations(
      {String? type}) async {
    bool? state;
    List<OperationModel>? listOperations;
    String? error;

    try {
      (state, listOperations, error) =
          await getOperationsDatasource.getOperations(type: type);
    } catch (exception) {
      debugPrint('Get Operations Repository Impl: $exception');
    }

    return (state, listOperations, error);
  }
}
