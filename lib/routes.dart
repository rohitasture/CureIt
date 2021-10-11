import 'package:cureit/screens/FAQ_page/faq_page.dart';
import 'package:cureit/screens/book_appointment/book_appointment.dart';
import 'package:cureit/screens/profile_page/profile_page.dart';
import 'package:cureit/screens/welcome/forgot_password.dart';
import 'package:cureit/screens/welcome/sign_in.dart';
import 'package:cureit/screens/welcome/sign_up.dart';
import 'package:cureit/screens/welcome/welcome_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:cureit/screens/home_page/home_page.dart';
import 'package:cureit/screens/profile_page/profile_page.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfile.routeName: (context) => MyProfile(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  SignInPage.routeName: (context) => SignInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  FAQS.routeName: (context) => FAQS(),
  BookAppointment.routeName: (context) => BookAppointment(),
};
