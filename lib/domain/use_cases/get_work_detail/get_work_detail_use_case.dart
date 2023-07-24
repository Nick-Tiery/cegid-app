import '../../../data/models/work_detail/work_detail_model.dart';

abstract class GetWorkDetailRepository {
  Future<(bool?, WorkDetailModel?, String?)> getWorkDetail({String? idWork});
}

class GetWorkDetailUseCase {
  final GetWorkDetailRepository getWorkDetailRepository;

  GetWorkDetailUseCase({required this.getWorkDetailRepository});

  Future<(bool?, WorkDetailModel?, String?)> call({String? idWork}) async {
    return await getWorkDetailRepository.getWorkDetail(idWork: idWork);
  }
}
