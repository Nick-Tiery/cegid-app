import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/use_cases/get_fields/get_fields_use_case.dart';
import '../../datasources/get_fields/get_fields_datasource.dart';
import '../../models/field/field_model.dart';

class GetFieldsRepositoryImpl implements GetFieldsRepository {
  final GetFieldsDatasourceImpl getFieldsDatasource;

  GetFieldsRepositoryImpl({
    required this.getFieldsDatasource,
  });

  @override
  Future<(bool?, List<FieldModel>?, String?)> getFields({String? type}) async {
    bool? state;
    List<FieldModel>? listFields;
    String? error;

    try {
      (state, listFields, error) =
          await getFieldsDatasource.getFields(type: type);
    } catch (exception) {
      debugPrint('Get Fields Repository Impl: $exception');
    }

    return (state, listFields, error);
  }
}
