import 'package:flutter/material.dart';

class HealthIssues extends StatelessWidget {
  const HealthIssues({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
<<<<<<< HEAD
      height: 200,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0.05 * width,
              child: Material(
                child: Container(
                  height: 200,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
          Positioned(
              top: 10,
              left: 0.075 * width,
              child: Card(
                //elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  width: 0.25 * width,
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
              left: 0.325 * width,
              child: Card(
                //elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  width: 0.25 * width,
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
              left: 0.625 * width,
              child: Card(
                //elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  width: 0.25 * width,
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
              left: 0.075 * width,
              child: Card(
                //elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  width: 0.25 * width,
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
              left: 0.325 * width,
              child: Card(
                //elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  width: 0.25 * width,
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
              left: 0.625 * width,
              child: Card(
                //elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  width: 0.25 * width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      // fit: BoxFit.fill,
                      image: AssetImage("assets/images/doctor.jpg"),
                    ),
                  ),
                ),
              )),
=======
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      color: Colors.blue,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Card(
                      //elevation: 10.0,
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
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Card(
                      //elevation: 10.0,
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
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Card(
                      //elevation: 10.0,
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
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Card(
                      //elevation: 10.0,
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
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Card(
                      //elevation: 10.0,
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
              ],
            ),
          ),
>>>>>>> 209a8f9c27375f2c6f0061e212eddbfa85e6c0fe
        ],
      ),
    );
  }
}
