import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iottive/ui/login_screen/login_screen.dart';
import 'package:iottive/ui/product_list_screen/product_list_screen.dart';
import 'package:iottive/utils/get_storage_utils/get_storage_utils.dart';

class SplashScreen extends StatefulWidget {
  static String route = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) {
        GetStorageUtils.getBoolean(kIsLoggedIn, false).then((loginValue) {
          if (loginValue) {
            Get.offAllNamed(ProductListScreen.route);
          } else {
            Get.offAllNamed(LoginScreen.route);
          }
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'IOTTIVE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            SizedBox(
              height: 34,
            ),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
