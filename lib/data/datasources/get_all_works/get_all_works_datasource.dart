import '../../../app/resources/app_constants.dart';
import '../../models/work/work_today_model.dart';
import '../../services/rest_service.dart';

abstract class GetAllWorksDatasource {
  Future<(bool?, List<WorkTodayModel>?, String?)> getAllWorks();
}

class GetAllWorksDatasourceImpl implements GetAllWorksDatasource {
  final RestService restService;

  GetAllWorksDatasourceImpl({
    required this.restService,
  });

  @override
  Future<(bool?, List<WorkTodayModel>?, String?)> getAllWorks() async {
    final responseHttp = await restService
        .makePostRequestArray(AppConstants.endpointWorksToday, {});
    List<WorkTodayModel>? listWorks = [];

    if (responseHttp == null || responseHttp.errors!.isNotEmpty) {
      return (false, null, responseHttp?.errors?[0].toString());
    }

    for (Map<String, dynamic> work in responseHttp.listData!) {
      listWorks.add(WorkTodayModel.fromJson(work));
    }

    return (true, listWorks, '');
  }
}
