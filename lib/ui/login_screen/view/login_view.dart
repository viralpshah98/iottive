import 'package:flutter/material.dart';
import 'package:iottive/ui/login_screen/login_screen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: LayoutBuilder(
              builder: (layoutBuilderContext, viewPortConstraints) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.only(
                    right: 32,
                    left: 32,
                    top: 46,
                    bottom: 16,
                  ),
                  child: ConstrainedBox(
                    constraints: viewPortConstraints.copyWith(
                      minHeight: viewPortConstraints.maxHeight,
                      maxHeight: double.infinity,
                    ),
                    child: const IntrinsicHeight(
                      child: Flex(
                        direction: Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flex(
                            direction: Axis.vertical,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Enter your login details',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                EmailAddressTextFormField(),
                                SizedBox(
                                  height: 28,
                                ),
                                PasswordTextFormField(),
                                SizedBox(
                                  height: 46,
                                ),
                                LoginButtonView(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const LoadingView(),
        ],
      ),
    );
  }
}
