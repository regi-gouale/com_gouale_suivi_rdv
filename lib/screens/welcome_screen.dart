import 'package:flutter/material.dart';
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
              t(context)!.pageHomeWelcome,
              style: Theme.of(context).textTheme.headline3,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                t(context)!.pageWelcomeOnboarding,
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
                onPressed: () {},
                child: Text(t(context)!.pageWelcomeLogin),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text(t(context)!.pageWelcomeSignUp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
