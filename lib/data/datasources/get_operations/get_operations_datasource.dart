import '../../../app/resources/app_constants.dart';
import '../../models/date/date_request_model.dart';
import '../../models/operation/operation_model.dart';
import '../../services/rest_service.dart';

abstract class GetOperationsDatasource {
  Future<(bool?, List<OperationModel>?, String?)> getOperations({String? type});
}

class GetOperationsDatasourceImpl implements GetOperationsDatasource {
  final RestService restService;

  GetOperationsDatasourceImpl({
    required this.restService,
  });

  @override
  Future<(bool?, List<OperationModel>?, String?)> getOperations(
      {String? type}) async {
    List<OperationModel>? listOperations = [];

    final preResponseHttp = await restService.makePostRequestSingle(
        AppConstants.endpointDate, DateRequestModel(type: type).toJson());

    if (preResponseHttp == null || preResponseHttp.errors!.isNotEmpty) {
      return (false, null, preResponseHttp?.errors?[0].toString());
    }

    if (true /* Comprobar si la fecha obtenido es posterior a la guardada */) {
      final responseHttp = await restService
          .makePostRequestArray(AppConstants.endpointOperations, {});

      if (responseHttp == null || responseHttp.errors!.isNotEmpty) {
        return (false, null, responseHttp?.errors?[0].toString());
      }

      for (Map<String, dynamic> work in responseHttp.listData!) {
        listOperations.add(OperationModel.fromJson(work));
      }
      /* Guardar fecha en REALM */
      /* Guardar fields en REALM */
    } else {
      /* Rellenar listFields de REALM */
    }

    return (true, listOperations, '');
  }
}
