import 'package:cureit/screens/FAQ_page/faq_page.dart';
import 'package:cureit/screens/book_appointment/book_appointment.dart';
import 'package:cureit/screens/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cureit/screens/home_page/home_page.dart';
import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFF4FC3F7);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFF0277BD).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? Colors.blue[800]
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Plus Icon.svg",
                  height: 20,
                  color: MenuState.bookAppointment == selectedMenu
                      ? Colors.blue[800]
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, BookAppointment.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/faq2.svg",
                  height: 25,
                  color: MenuState.faqPage == selectedMenu
                      ? Colors.blue[800]
                      : inActiveIconColor,
                ),
                onPressed: () => Navigator.pushNamed(context, FAQS.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? Colors.blue[800]
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, MyProfile.routeName),
              ),
            ],
          )),
    );
  }
}
