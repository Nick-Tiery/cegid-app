import '../../../data/models/field/field_model.dart';

abstract class GetFieldsRepository {
  Future<(bool?, List<FieldModel>?, String?)> getFields({String? type});
}

class GetFieldsUseCase {
  final GetFieldsRepository getFieldsRepository;

  GetFieldsUseCase({required this.getFieldsRepository});

  Future<(bool?, List<FieldModel>?, String?)> call({String? type}) async {
    return await getFieldsRepository.getFields(type: type);
  }
}
