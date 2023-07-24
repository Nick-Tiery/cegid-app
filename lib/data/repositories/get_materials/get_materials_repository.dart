import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/use_cases/get_materials/get_materials_use_case.dart';
import '../../datasources/get_materials/get_materials_datasource.dart';
import '../../models/material/material_model.dart';

class GetMaterialsRepositoryImpl implements GetMaterialsRepository {
  final GetMaterialsDatasourceImpl getMaterialsDatasource;

  GetMaterialsRepositoryImpl({
    required this.getMaterialsDatasource,
  });

  @override
  Future<(bool?, List<MaterialModel>?, String?)> getMaterials(
      {String? type}) async {
    bool? state;
    List<MaterialModel>? listMaterials;
    String? error;

    try {
      (state, listMaterials, error) =
          await getMaterialsDatasource.getMaterials(type: type);
    } catch (exception) {
      debugPrint('Get Materials Repository Impl: $exception');
    }

    return (state, listMaterials, error);
  }
}
