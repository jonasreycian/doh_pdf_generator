import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (_) => WelcomeScreen()},
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/personal_info':
            return CupertinoPageRoute(
              builder: (_) => PersonalInformationScreen(),
            );
          case '/health_question':
            return CupertinoPageRoute(
              builder: (_) => HealthQuestionScreen(),
            );
          case '/contact_info':
            return CupertinoPageRoute(
              builder: (_) => ContactInformationScreen(),
            );
          case '/additional_info':
            return CupertinoPageRoute(
              builder: (_) => AdditionalInformationScreen(),
            );
        }
      },
    );
  }
}
