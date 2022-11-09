import 'package:flutter/material.dart';
import 'package:iger/generated/themes/color_schemes.g.dart';
import 'package:iger/generated/themes/font_schemes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iger/screens/welcome_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iGer',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: appTextTheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: appTextTheme,
      ),
      // home: const HomeScreen(title: 'RDV'),
      home: const WelcomeScreen(),
    );
  }
}
