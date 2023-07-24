import '../../../data/models/material/material_model.dart';

abstract class GetMaterialsRepository {
  Future<(bool?, List<MaterialModel>?, String?)> getMaterials({String? type});
}

class GetMaterialsUseCase {
  final GetMaterialsRepository getMaterialsRepository;

  GetMaterialsUseCase({required this.getMaterialsRepository});

  Future<(bool?, List<MaterialModel>?, String?)> call({String? type}) async {
    return await getMaterialsRepository.getMaterials(type: type);
  }
}
