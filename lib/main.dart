import 'package:cureit/screens/home_page/home_page.dart';
import 'package:cureit/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:cureit/routes.dart';

void main() {
  runApp(MyApp());
}

ThemeData appTheme =
    ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: 'Oxygen');

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cure It',
        theme: appTheme,
        home: SafeArea(child: WelcomeScreen())
        // We use routeName so that we dont need to remember the name
        // initialRoute: HomeScreen.routeName,
        // routes: routes,
        );
  }
}
