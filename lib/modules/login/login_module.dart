import 'package:app_filmes_getx/application/module/module.dart';
import 'package:app_filmes_getx/modules/login/login_binding.dart';
import 'package:app_filmes_getx/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBinding(),
    )
  ];
}
