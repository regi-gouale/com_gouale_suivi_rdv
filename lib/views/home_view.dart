import 'package:flutter/material.dart';
import 'package:iger/utils/translate.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                t(context)!.welcome,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                t(context)!.welcomeDescription,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // TODO: Add 3 collaborators with their names and number of talks
                  // Navigator.of(context).pushNamed("/team");
                },
                child: Text(t(context)!.team),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // TODO: Add 3 most used keywords
                  // Navigator.of(context).pushNamed("/talks");
                },
                child: Text(t(context)!.talks),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
