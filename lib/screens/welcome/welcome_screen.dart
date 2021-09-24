import 'package:cureit/screens/welcome/sign_in.dart';
import 'package:cureit/screens/welcome/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        SvgPicture.asset(
          'assets/icons/Sign_Up_bg.svg',
          alignment: Alignment.center,
          fit: BoxFit.fill,
          //width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
        ),
        Container(
          // color: Colors.amber[300],
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/logo.png"),
                height: 300,
                width: 400,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
                child: Text(
                  "Welcome to CureIt",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width / 1.4,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: MaterialButton(
                  onPressed: () async {
                    //Route to Register Page
                    Navigator.pushNamed(context, SignUpPage.routeName);
                  },
                  child: Text('Sign Up'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 1.4,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
                child: MaterialButton(
                  onPressed: () {
                    //Route to Sign In Page
                    Navigator.pushNamed(context, SignInPage.routeName);
                  },
                  child: Text('Sign In'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text("Follow Us here"),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue[700],
                        )),
                    IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.redAccent,
                        )),
                    IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.twitter,
                            color: Colors.blue[400])),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
