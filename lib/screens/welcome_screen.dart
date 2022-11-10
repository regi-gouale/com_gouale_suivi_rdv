import 'package:flutter/material.dart';
import 'package:iger/screens/login_screen.dart';
import 'package:iger/screens/signup_screen.dart';
import 'package:iger/utils/translate.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t(context)!.welcome,
              style: Theme.of(context).textTheme.headline3,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                t(context)!.onboardingMessage,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 24.0,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/welcome_image.png',
                  width: double.infinity,
                  height: 375,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Text(t(context)!.loginTitle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: Text(t(context)!.signUpTitle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
