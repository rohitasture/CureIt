import 'package:cureit/main.dart';
import 'package:cureit/screens/home_page/components/HomeScreenTop.dart';
import 'package:cureit/screens/home_page/components/categories.dart';
import 'package:cureit/screens/home_page/components/health_issues.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';
//import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeScreenTopContainer(),
            Categories(),
            HealthIssues(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
