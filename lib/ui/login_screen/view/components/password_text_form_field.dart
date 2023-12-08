import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iottive/ui/login_screen/login_screen.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isPasswordVisible != current.isPasswordVisible,
      builder: (context, state) {
        final loginBloc = context.read<LoginBloc>();
        return TextFormField(
          obscureText: !state.isPasswordVisible,
          initialValue: state.password.value,
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              hintText: 'Enter Password',
              errorText: !state.password.isPure && state.password.isNotValid
                  ? 'Please enter password'
                  : null,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  right: 8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.purple,
                        style: BorderStyle.solid,
                        width: 2,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.password,
                    color: Colors.purple,
                  ),
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  state.isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () {
                  loginBloc.add(const TogglePasswordVisibilityEvent());
                },
                color: Colors.purple,
              )),
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          onChanged: (value) => loginBloc.add(
            PasswordEvent(password: value),
          ),
        );
      },
    );
  }
}
