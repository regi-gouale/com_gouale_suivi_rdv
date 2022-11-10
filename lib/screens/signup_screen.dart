import 'package:flutter/material.dart';
import 'package:iger/forms/signup_form.dart';
import 'package:iger/screens/login_screen.dart';
import 'package:iger/utils/translate.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/signup_image.png',
                width: double.infinity,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  t(context)!.signUpTitle,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  t(context)!.signUpMessage,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
              const SignUpForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(t(context)!.alreadyHaveAccount),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Text(t(context)!.loginTitle),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
