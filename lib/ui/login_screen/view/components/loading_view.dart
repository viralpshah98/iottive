import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iottive/enum/enum.dart';
import 'package:iottive/ui/login_screen/login_screen.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.apiStatus != current.apiStatus,
      builder: (context, state) {
        return state.apiStatus == ApiStatus.loading
            ? Container(
                alignment: Alignment.center,
                color: Colors.purple.withOpacity(0.5),
                child: const CircularProgressIndicator(
                  color: Colors.purple,
                ))
            : const SizedBox.shrink();
      },
    );
  }
}
