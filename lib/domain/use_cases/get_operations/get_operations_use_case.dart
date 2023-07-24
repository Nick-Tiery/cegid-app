import '../../../data/models/operation/operation_model.dart';

abstract class GetOperationsRepository {
  Future<(bool?, List<OperationModel>?, String?)> getOperations({String? type});
}

class GetOperationsUseCase {
  final GetOperationsRepository getOperationsRepository;

  GetOperationsUseCase({required this.getOperationsRepository});

  Future<(bool?, List<OperationModel>?, String?)> call({String? type}) async {
    return await getOperationsRepository.getOperations(type: type);
  }
}
