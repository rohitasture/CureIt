import 'package:flutter/material.dart';

class HealthIssues extends StatelessWidget {
  const HealthIssues({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
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
                    left: 0.025 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
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
                    top: 10,
                    left: 0.25 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
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
                    top: 10,
                    left: 0.475 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
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
                    top: 10,
                    left: 0.7 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
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
                    top: 110,
                    left: 0.025 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
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
                    top: 110,
                    left: 0.25 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
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
                    top: 110,
                    left: 0.475 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
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
                    top: 110,
                    left: 0.7 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 80,
                        width: 0.175 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            // fit: BoxFit.fill,
                            image: AssetImage("assets/images/doctor.jpg"),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
