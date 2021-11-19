import 'package:cureit/main.dart';
import 'package:cureit/screens/home_page/components/HomeScreenTop.dart';
import 'package:cureit/screens/home_page/components/categories.dart';
import 'package:cureit/screens/home_page/components/health_issues.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';
//import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeScreenTopContainer(),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Featured Doctors",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Column(children: <Widget>[
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: 0.05 * width,
                        child: Material(
                          child: Container(
                            height: 180,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 10,
                        left: 0.05 * width,
                        child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 150,
                            width: 0.4 * width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                // fit: BoxFit.fill,
                                image: AssetImage("assets/images/doctor.jpg"),
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 20,
                        left: 0.5 * width,
                        child: Container(
                          height: 150,
                          width: 0.45 * width,
                          child: Column(
                            children: [
                              Text("Aryan Kukreja",
                                  style: TextStyle(fontSize: 20)),
                              Divider(
                                color: Colors.white,
                              ),
                              Text(
                                  "Qualifications: MBBS, MD(surgery) AIIMS Delhi\nExperience: 10 years\nLocation : Gurugram",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: 0.05 * width,
                        child: Material(
                          child: Container(
                            height: 180,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 10,
                        left: 0.05 * width,
                        child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 150,
                            width: 0.4 * width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                // fit: BoxFit.fill,
                                image: AssetImage("assets/images/doctor.jpg"),
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 20,
                        left: 0.5 * width,
                        child: Container(
                          height: 150,
                          width: 0.45 * width,
                          child: Column(
                            children: [
                              Text("Neeraj Chopra",
                                  style: TextStyle(fontSize: 20)),
                              Divider(
                                color: Colors.white,
                              ),
                              Text(
                                  "Qualifications: MBBS, MD(surgery) AIIMS Rishikesh\nExperience: 2 years\nLocation : Jaipur",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: 0.05 * width,
                        child: Material(
                          child: Container(
                            height: 180,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 10,
                        left: 0.05 * width,
                        child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 150,
                            width: 0.4 * width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                // fit: BoxFit.fill,
                                image: AssetImage("assets/images/doctor.jpg"),
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 20,
                        left: 0.5 * width,
                        child: Container(
                          height: 150,
                          width: 0.45 * width,
                          child: Column(
                            children: [
                              Text("Aryan Kukreja",
                                  style: TextStyle(fontSize: 20)),
                              Divider(
                                color: Colors.white,
                              ),
                              Text(
                                  "Qualifications: MBBS, MD(surgery) AIIMS Delhi\nExperience: 10 years\nLocation : Gurugram",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              HealthIssues()
            ]),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
