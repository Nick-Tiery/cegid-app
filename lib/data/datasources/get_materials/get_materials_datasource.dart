import '../../../app/resources/app_constants.dart';
import '../../models/date/date_request_model.dart';
import '../../models/material/material_model.dart';
import '../../services/rest_service.dart';

abstract class GetMaterialsDatasource {
  Future<(bool?, List<MaterialModel>?, String?)> getMaterials({String? type});
}

class GetMaterialsDatasourceImpl implements GetMaterialsDatasource {
  final RestService restService;

  GetMaterialsDatasourceImpl({
    required this.restService,
  });

  @override
  Future<(bool?, List<MaterialModel>?, String?)> getMaterials(
      {String? type}) async {
    List<MaterialModel>? listMaterials = [];

    final preResponseHttp = await restService.makePostRequestSingle(
        AppConstants.endpointDate, DateRequestModel(type: type).toJson());

    if (preResponseHttp == null || preResponseHttp.errors!.isNotEmpty) {
      return (false, null, preResponseHttp?.errors?[0].toString());
    }

    if (true /* Comprobar si la fecha obtenido es posterior a la guardada */) {
      final responseHttp = await restService
          .makePostRequestArray(AppConstants.endpointMaterials, {});

      if (responseHttp == null || responseHttp.errors!.isNotEmpty) {
        return (false, null, responseHttp?.errors?[0].toString());
      }

      for (Map<String, dynamic> work in responseHttp.listData!) {
        listMaterials.add(MaterialModel.fromJson(work));
      }
      /* Guardar fecha en REALM */
      /* Guardar fields en REALM */
    } else {
      /* Rellenar listFields de REALM */
    }

    return (true, listMaterials, '');
  }
}
