import 'package:get/get.dart';
import 'package:user_list/app/bindings/home_binding.dart';
import 'package:user_list/app/bindings/user_binding.dart';
import 'package:user_list/app/ui/pages/home_page/home_page.dart';
import 'package:user_list/app/ui/pages/user_page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.user,
      page: () => UserPage(),
      binding: UserBinding(),
    ),
  ];
}
