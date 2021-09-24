import 'package:cureit/components/basiclayout.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);
  static String routeName = "/book";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          BasicLayout("Book appointment Page"),
        ],
      ),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.bookAppointment),
    );
  }
}
