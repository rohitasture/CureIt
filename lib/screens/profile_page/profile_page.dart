import 'package:cureit/components/basiclayout.dart';
import 'package:cureit/components/profileLayout.dart';
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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        ProfileLayout("Welcome " + user!.displayName.toString()),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          //color: Colors.blue[200],
          height: 0.085 * height,
          width: 0.9 * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10.0,
                )
              ]),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.person,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Your Profile",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 130,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          //color: Colors.blue[200],
          height: 0.085 * height,
          width: 0.9 * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10.0,
                )
              ]),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notes,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Your Appointments",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 60,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          //color: Colors.blue[200],
          height: 0.085 * height,
          width: 0.9 * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10.0,
                )
              ]),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.history,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Medical History",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 93,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          //color: Colors.blue[200],
          height: 0.085 * height,
          width: 0.9 * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10.0,
                )
              ]),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.settings,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 159,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
              )
            ],
          ),
        ),
        InkWell(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.popUntil(context, ModalRoute.withName("/welcome"));
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SignInPage()));
            }, // Handle your callback
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              //color: Colors.blue[200],
              height: 0.085 * height,
              width: 0.9 * width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.blue.shade300,
                      blurRadius: 10.0,
                    )
                  ]),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.logout,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 159,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 25,
                  )
                ],
              ),
            )),
      ])),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
