import 'package:cureit/components/basiclayout.dart';
import 'package:cureit/screens/welcome/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);
  static String routeName = "/profile";

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  static User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        BasicLayout("Your Profile"),
        Container(
            child: CircularProfileAvatar('',
                child: Image.asset("assets/images/dp.png"),
                borderColor: Colors.blueAccent,
                borderWidth: 2,
                elevation: 5,
                imageFit: BoxFit.fitWidth,
                radius: 50)),
        Container(child: Text("Welcome " + user!.displayName.toString())),
        Container(
            child: ElevatedButton(
                child: Text("Logout"),
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.popUntil(context, ModalRoute.withName("/welcome"));
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SignInPage()));
                }))
      ]),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
