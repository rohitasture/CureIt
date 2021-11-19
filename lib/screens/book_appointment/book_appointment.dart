import 'package:cureit/components/basiclayout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);
  static User? user = FirebaseAuth.instance.currentUser;
  static String routeName = "/book";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // body: Column(
      //   children: <Widget>[
      //     BasicLayout("Book appointment Page"),

      //   ],
      // ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        BasicLayout("Book appointment Page"),
      ])),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.bookAppointment),
    );
  }
}
