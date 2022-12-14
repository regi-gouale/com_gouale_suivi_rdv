import 'package:flutter/material.dart';
import 'package:iger/forms/login_form.dart';
import 'package:iger/screens/signup_screen.dart';
import 'package:iger/utils/translate.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/login_image.png',
              width: double.infinity,
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                t(context)!.loginTitle,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                t(context)!.loginMessage,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            const LoginForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(t(context)!.noAccount),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(t(context)!.signUpTitle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
