import 'package:flutter/material.dart';
import 'package:suivi_rdv/utils/translate.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(t(context)!.pageHomeWelcome),
      ),
    );
  }
}
