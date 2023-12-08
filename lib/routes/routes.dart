import 'package:get/get.dart';
import 'package:iottive/ui/login_screen/login_screen.dart';
import 'package:iottive/ui/product_detail_screen/product_detail_screen.dart';
import 'package:iottive/ui/product_detail_screen/product_detail_screen.dart';
import 'package:iottive/ui/product_list_screen/product_list_screen.dart';
import 'package:iottive/ui/splash_screen/splash_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: SplashScreen.route,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: LoginScreen.route,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: ProductListScreen.route,
    page: () => const ProductListScreen(),
  ),
  GetPage(
    name: ProductDetailScreen.route,
    page: () => ProductDetailScreen(),
  ),
];
