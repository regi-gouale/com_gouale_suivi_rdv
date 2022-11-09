import 'package:flutter/material.dart';
import 'package:iger/generated/themes/color_schemes.g.dart';
import 'package:iger/generated/themes/font_schemes.dart';
import 'package:iger/screens/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suivi RDV',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: comfortaaAppTextTheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: comfortaaAppTextTheme,
      ),
      home: const HomeScreen(title: 'RDV'),
    );
  }
}
