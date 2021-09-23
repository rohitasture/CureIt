import 'package:cureit/screens/profile_page/profile_page.dart';
import 'package:flutter/widgets.dart';
import 'package:cureit/screens/home_page/home_page.dart';
import 'package:cureit/screens/profile_page/profile_page.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfile.routeName: (context) => MyProfile(),
};
