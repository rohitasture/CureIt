import 'package:cureit/authentication.dart';
import 'package:cureit/screens/home_page/home_page.dart';
import 'package:cureit/screens/welcome/sign_in.dart';
import 'package:cureit/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static String routeName = "/signup";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    "Sign Up",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 30),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                        controller: _name,
                        validator: (value) =>
                            Validator.validateName(name: _name.text),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'your name',
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: 'Name',
                            labelStyle: TextStyle(color: Colors.black)))),
                Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                        controller: _email,
                        validator: (value) =>
                            Validator.validateEmail(email: _email.text),
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
                        validator: (value) => Validator.validatePassword(
                            password: _password.text),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'password',
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black)))),
                Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                  child: MaterialButton(
                    onPressed: () async {
                      User? user = await AuthFunctions.SignUp(
                          name: _name.text,
                          email: _email.text,
                          password: _password.text);
                      print(user);
                      if (user != null) {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      } else {
                        print("some error occured !!");
                      }
                    },
                    child: Text('Register'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text("-OR-"),
                ),
                Container(
                  child: Text("Register with"),
                ),
                IconButton(
                    iconSize: 50,
                    onPressed: () {},
                    icon: Image.asset("assets/images/google.png")),
                Container(
                    margin: EdgeInsets.all(30),
                    child: GestureDetector(
                      onTap: () =>
                          {Navigator.pushNamed(context, SignInPage.routeName)},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an Account? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign In',
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
