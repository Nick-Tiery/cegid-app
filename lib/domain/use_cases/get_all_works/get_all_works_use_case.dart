import '../../../data/models/work/work_today_model.dart';

abstract class GetAllWorksRepository {
  Future<(bool?, List<WorkTodayModel>?, String?)> getAllWorks();
}

class GetAllWorksUseCase {
  final GetAllWorksRepository getAllWorksRepository;

  GetAllWorksUseCase({required this.getAllWorksRepository});

  Future<(bool?, List<WorkTodayModel>?, String?)> call() async {
    return await getAllWorksRepository.getAllWorks();
  }
}
