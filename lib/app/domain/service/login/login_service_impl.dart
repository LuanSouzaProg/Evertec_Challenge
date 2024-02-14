import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/login/login_repository.dart';
import '../../../shared/utils/state.dart';
import '../../models/user_credential_model.dart';
import 'login_service.dart';

class LoginServiceImpl implements LoginService {
  LoginRepository loginRepository = Modular.get();

  @override
  Future<ViewState> validateUser(UserCredentialModel userCredentialModel) =>
      loginRepository.validateUser(userCredentialModel);
}
