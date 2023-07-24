import '../../../data/models/user_login/login_initial_model.dart';

abstract class LoginInitialRepository {
  Future<(bool?, String?, String?)> loginInitial(
      {LoginInitialModel? loginInitial});
}

class LoginInitialUseCase {
  final LoginInitialRepository loginInitialRepository;

  LoginInitialUseCase({required this.loginInitialRepository});

  Future<(bool?, String?, String?)> call(
      {LoginInitialModel? loginInitial}) async {
    return await loginInitialRepository.loginInitial(
      loginInitial: loginInitial,
    );
  }
}
