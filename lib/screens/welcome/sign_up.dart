import 'package:cureit/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static String routeName = "/signup";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.white),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: new Image.asset("assets/images/logo.png"),
              height: 200,
              width: 500,
            ),
            Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
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
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'password',
                        hintStyle: TextStyle(color: Colors.grey),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black)))),
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: MaterialButton(
                onPressed: () async {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: Text('Register'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: MaterialButton(
                onPressed: () async {},
                child: Text('Google Sign In'),
              ),
            )
          ],
        )),
      ),
    );
  }
}
