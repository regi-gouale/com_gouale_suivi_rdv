

import 'package:flutter/material.dart';
import 'package:iger/utils/translate.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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
              vertical: 4.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: t(context)!.firstName,
                hintText: t(context)!.firstNameHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.firstNameRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: t(context)!.lastName,
                hintText: t(context)!.lastNameHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.lastNameRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: t(context)!.userName,
                hintText: t(context)!.userNameHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.userNameRequired;
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 4.0,
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
              vertical: 4.0,
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
            child: TextFormField(
              decoration: InputDecoration(
                labelText: t(context)!.passwordConfirm,
                hintText: t(context)!.passwordConfirmHint,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return t(context)!.passwordConfirmRequired;
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
                    const SnackBar(
                      content: Text('Processing Data'),
                    ),
                  );
                }
              },
              child: Text(t(context)!.signUpTitle),
            ),
          ),
        ],
      ),
    );
  }
}