import '../featrures/auth/models/user_data.dart';
import '../featrures/repositories/user_repo.dart';

class ApiHelpersRequest {
  Future<User> getUserById(int id) async {
    return await UserRepo().getUserById(id);
  }
}
