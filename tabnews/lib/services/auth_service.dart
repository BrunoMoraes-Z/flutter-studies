import 'package:flutter/material.dart';
import 'package:tabnews/repositories/auth_repository.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  bool isLoading = false;
  bool authenticaded = false;

  late AuthRepository _authRepository;

  AuthService(AuthRepository authRepository) {
    _authRepository = authRepository;
    notifyListeners();
  }
}
