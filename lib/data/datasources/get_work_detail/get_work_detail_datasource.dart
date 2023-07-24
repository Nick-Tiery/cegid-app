import '../../../app/resources/app_constants.dart';
import '../../models/work_detail/id_work_model.dart';
import '../../models/work_detail/work_detail_model.dart';
import '../../services/rest_service.dart';

abstract class GetWorkDetailDatasource {
  Future<(bool?, WorkDetailModel?, String?)> getWorkDetail({String? idWork});
}

class GetWorkDetailDatasourceImpl implements GetWorkDetailDatasource {
  final RestService restService;

  GetWorkDetailDatasourceImpl({
    required this.restService,
  });

  @override
  Future<(bool?, WorkDetailModel?, String?)> getWorkDetail(
      {String? idWork}) async {
    final responseHttp = await restService.makePostRequestSingle(
      AppConstants.endpointWorkDetail,
      IdWorkModel(idWork: idWork),
    );

    if (responseHttp == null ||
        responseHttp.data!.isEmpty ||
        responseHttp.errors!.isNotEmpty) {
      return (false, null, responseHttp?.errors?[0].toString());
    }

    final WorkDetailModel workDetail =
        WorkDetailModel.fromJson(responseHttp.data!);

    return (true, workDetail, '');
  }
}
