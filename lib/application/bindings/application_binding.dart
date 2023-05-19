import 'package:app_filmes_getx/application/auth/auth_service.dart';
import 'package:app_filmes_getx/repositories/login/login_repository.dart';
import 'package:app_filmes_getx/repositories/login/login_repository_impl.dart';
import 'package:app_filmes_getx/services/login/login_services.dart';
import 'package:app_filmes_getx/services/login/login_services_impl.dart';
import 'package:get/get.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<LoginServices>(
      () => LoginServicesImpl(
        loginRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.put(AuthServices()).init();
  }
}
