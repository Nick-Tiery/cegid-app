import '../../../app/resources/app_constants.dart';
import '../../models/user_login/login_initial_model.dart';
import '../../models/user_login/url_model.dart';
import '../../services/rest_service.dart';

abstract class LoginInitialDatasource {
  Future<(bool?, String?, String?)> loginInitial(
      {LoginInitialModel? loginInitial});
}

class LoginInitialDatasourceImpl implements LoginInitialDatasource {
  final RestService restService;

  LoginInitialDatasourceImpl({
    required this.restService,
  });

  @override
  Future<(bool?, String?, String?)> loginInitial(
      {LoginInitialModel? loginInitial}) async {
    final responseHttp = await restService.makePostRequestLoginInitial(
        AppConstants.endpointLoginInitial, loginInitial);

    if (responseHttp == null ||
        responseHttp.data!.isEmpty ||
        responseHttp.errors!.isNotEmpty) {
      return (false, null, responseHttp?.errors?[0].toString());
    }

    final UrlModel url = UrlModel.fromJson(responseHttp.data!);

    return (responseHttp.state, url.url, '');
  }
}
