import '../../../domain/models/user_credential_model.dart';
import '../../../shared/utils/state.dart';

abstract class LoginRepository {
  Future<ViewState> validateUser(UserCredentialModel userCredentialModel);
}
