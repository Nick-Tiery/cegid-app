import '../../../data/models/user_login/login_initial_model.dart';
import '../../../data/models/user_login/token_model.dart';

abstract class LoginTokenRepository {
  Future<(bool?, TokenModel?, String?)> loginToken(
      {LoginInitialModel? loginInitial});
}

class LoginTokenUseCase {
  final LoginTokenRepository loginTokenRepository;

  LoginTokenUseCase({required this.loginTokenRepository});

  Future<(bool?, TokenModel?, String?)> call(
      {LoginInitialModel? loginInitial}) async {
    return await loginTokenRepository.loginToken(
      loginInitial: loginInitial,
    );
  }
}
