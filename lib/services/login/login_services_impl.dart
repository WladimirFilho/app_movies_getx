import 'package:app_filmes_getx/repositories/login/login_repository.dart';
import 'package:app_filmes_getx/services/login/login_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginServicesImpl implements LoginServices {
  LoginRepository _loginRepository;

  LoginServicesImpl({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;

  @override
  Future<UserCredential> login() {
    return _loginRepository.login();
  }
}
