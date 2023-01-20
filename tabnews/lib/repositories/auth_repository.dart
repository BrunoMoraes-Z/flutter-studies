import 'package:tabnews/models/auth_user.dart';

abstract class IAuthRepository {
  Future<AuthUser> authenticate({
    required String login,
    required String password,
  });
  Future<bool> recoverPassword({
    required String login,
  });
  Future<bool> registerAccount({
    required String username,
    required String email,
    required String password,
  });
}

class AuthRepository implements IAuthRepository {
  @override
  Future<AuthUser> authenticate({
    required String login,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<bool> recoverPassword({
    required String login,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<bool> registerAccount({
    required String username,
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
