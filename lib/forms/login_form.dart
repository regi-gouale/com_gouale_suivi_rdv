import 'package:flutter/material.dart';
import 'package:iger/utils/translate.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 8.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: t(context)!.email,
                hintText: t(context)!.emailHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.emailRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 8.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: t(context)!.password,
                hintText: t(context)!.passwordHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.passwordRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(t(context)!.loginSuccess),
                    ),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(t(context)!.loginTitle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
