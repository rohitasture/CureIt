import 'package:cureit/components/basiclayout.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';

class FAQS extends StatelessWidget {
  const FAQS({Key? key}) : super(key: key);
  static String routeName = "/faq";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          BasicLayout("Faqs Page"),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.faqPage),
    );
  }
}
