import '../../../app/resources/app_constants.dart';
import '../../models/date/date_request_model.dart';
import '../../models/field/field_model.dart';
import '../../services/rest_service.dart';

abstract class GetFieldsDatasource {
  Future<(bool?, List<FieldModel>?, String?)> getFields({String? type});
}

class GetFieldsDatasourceImpl implements GetFieldsDatasource {
  final RestService restService;

  GetFieldsDatasourceImpl({
    required this.restService,
  });

  @override
  Future<(bool?, List<FieldModel>?, String?)> getFields({String? type}) async {
    List<FieldModel>? listFields = [];

    final preResponseHttp = await restService.makePostRequestSingle(
        AppConstants.endpointDate, DateRequestModel(type: type).toJson());

    if (preResponseHttp == null || preResponseHttp.errors!.isNotEmpty) {
      return (false, null, preResponseHttp?.errors?[0].toString());
    }

    if (true /* Comprobar si la fecha obtenido es posterior a la guardada */) {
      final responseHttp = await restService
          .makePostRequestArray(AppConstants.endpointFields, {});

      if (responseHttp == null || responseHttp.errors!.isNotEmpty) {
        return (false, null, responseHttp?.errors?[0].toString());
      }

      for (Map<String, dynamic> field in responseHttp.listData!) {
        listFields.add(FieldModel.fromJson(field));
      }

      /* Guardar fecha en REALM */
      /* Guardar fields en REALM */
    } else {
      /* Rellenar listFields de REALM */
    }

    return (true, listFields, '');
  }
}
