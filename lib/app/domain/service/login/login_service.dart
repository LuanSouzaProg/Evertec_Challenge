import '../../models/user_credential_model.dart';
import '../../../shared/utils/state.dart';

abstract class LoginService {
  Future<ViewState> validateUser(UserCredentialModel credentialModel);
}
