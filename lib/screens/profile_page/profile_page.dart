import 'package:cureit/components/basiclayout.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          BasicLayout("Profile Page"),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
