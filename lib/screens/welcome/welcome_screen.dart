import 'package:cureit/screens/welcome/sign_in.dart';
import 'package:cureit/screens/welcome/sign_up.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Image.asset("assets/images/logo.png"),
          height: 400,
          width: 400,
        ),
        Container(
          margin: EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width / 1.4,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.amber),
          child: MaterialButton(
            onPressed: () async {
              //Route to Register Page
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Text('Sign Up'),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width / 1.4,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.amber),
          child: MaterialButton(
            onPressed: () {
              //Route to Sign In Page
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInPage()));
            },
            child: Text('Sign In'),
          ),
        )
      ],
    ));
  }
}
