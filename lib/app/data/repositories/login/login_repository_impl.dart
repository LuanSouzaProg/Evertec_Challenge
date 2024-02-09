import '../../../domain/models/user_credential_model.dart';
import '../../../shared/utils/mock.dart';
import '../../../shared/utils/state.dart';
import 'login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<ViewState> validateUser(
      UserCredentialModel userCredentialModel) async {
    try {
      final response = mockData
          .map<UserCredentialModel>((e) => UserCredentialModel.fromMap(e));

      final result = response.any((user) =>
          user.type == userCredentialModel.type &&
          user.number == userCredentialModel.number &&
          user.password == userCredentialModel.password);

      if (result) {
        return Success(result);
      } else {
        return Failure('Usuario no encontrado.');
      }
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
