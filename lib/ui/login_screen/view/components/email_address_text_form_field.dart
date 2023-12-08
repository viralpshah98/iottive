import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iottive/ui/login_screen/login_screen.dart';

class EmailAddressTextFormField extends StatelessWidget {
  const EmailAddressTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.emailAddress != current.emailAddress,
      builder: (context, state) {
        final loginBloc = context.read<LoginBloc>();
        return TextFormField(
          initialValue: state.emailAddress.value,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 4,
              ),
            ),
            hintText: 'Enter Email',
            errorText:
                !state.emailAddress.isPure && state.emailAddress.isNotValid
                    ? 'Please enter email address'
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
                  Icons.email,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          onChanged: (value) => loginBloc.add(
            EmailAddressEvent(emailAddress: value),
          ),
        );
      },
    );
  }
}
