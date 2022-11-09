import 'package:flutter/material.dart';
import 'package:iger/utils/translate.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t(context)!.appTitle),
      ),
      body: Center(
        child: Text(
          t(context)!.welcome,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
