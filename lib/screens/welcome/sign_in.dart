import 'package:cureit/screens/home_page/home_page.dart';
import 'package:cureit/screens/welcome/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static String routeName = "/signin";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        SvgPicture.asset(
          'assets/icons/Sign_Up_bg.svg',
          alignment: Alignment.center,
          fit: BoxFit.fill,
          //width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
        ),
        Container(
            margin: EdgeInsets.fromLTRB(25, 60, 25, 0),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset("assets/images/logo.png"),
                  height: 100,
                  width: 100,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 30),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'something@email.com',
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black)))),
                Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                        controller: _password,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'password',
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black)))),
                Container(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: () => {
                              Navigator.pushNamed(context, SignUpPage.routeName)
                            },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                Container(
                  margin: EdgeInsets.all(30),
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                  child: MaterialButton(
                    onPressed: () async {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    child: Text('Login'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Text("-OR-"),
                ),
                Container(
                  child: Text("Sign in with"),
                ),
                IconButton(
                    iconSize: 50,
                    onPressed: () {},
                    icon: Image.asset("assets/images/google.png")),
                Container(
                    margin: EdgeInsets.all(30),
                    child: GestureDetector(
                      onTap: () =>
                          {Navigator.pushNamed(context, SignUpPage.routeName)},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an Account? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ))),
      ]),
    );
  }
}
