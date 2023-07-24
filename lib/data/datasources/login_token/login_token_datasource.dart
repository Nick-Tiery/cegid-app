import '../../../app/resources/app_constants.dart';
import '../../models/user_login/login_initial_model.dart';
import '../../models/user_login/token_model.dart';
import '../../services/rest_service.dart';

abstract class LoginTokenDatasource {
  Future<(bool?, TokenModel?, String?)> loginToken(
      {LoginInitialModel? loginInitial});
}

class LoginTokenDatasourceImpl implements LoginTokenDatasource {
  final RestService restService;

  LoginTokenDatasourceImpl({
    required this.restService,
  });

  @override
  Future<(bool?, TokenModel?, String?)> loginToken(
      {LoginInitialModel? loginInitial}) async {
    final responseHttp = await restService.makePostRequestLoginArray(
        AppConstants.endpointLoginToken, loginInitial);
    TokenModel? token;

    if (responseHttp == null ||
        responseHttp.listData!.isEmpty ||
        responseHttp.errors!.isNotEmpty) {
      return (false, null, responseHttp?.errors?[0].toString());
    }

    for (Map<String, dynamic> userToken in responseHttp.listData!) {
      token = TokenModel.fromJson(userToken);
    }

    return (true, token, '');
  }
}
