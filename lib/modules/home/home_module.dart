import 'package:app_filmes_getx/application/module/module.dart';
import 'package:app_filmes_getx/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
    ),
  ];
}
