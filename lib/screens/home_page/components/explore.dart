import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      //color: Colors.blue[50],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 0.75 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image(
                              height: 150,
                              width: 0.65 * width,
                              image: AssetImage("assets/images/doctor.jpg"),
                            ),
                            Container(
                              child: Text("Doctors",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Text("Book Appointments",
                                  style: TextStyle(fontSize: 10)),
                            )
                          ],
                        ))),
              ],
            ),
          ),
          Container(
            width: 0.75 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image(
                              height: 150,
                              width: 0.65 * width,
                              image: AssetImage("assets/images/doctor.jpg"),
                            ),
                            Container(
                              child: Text("Health Issues",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Text("Explore common health issues",
                                  style: TextStyle(fontSize: 10)),
                            )
                          ],
                        ))),
              ],
            ),
          ),
          Container(
            width: 0.75 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image(
                              height: 150,
                              width: 0.65 * width,
                              image: AssetImage("assets/images/doctor.jpg"),
                            ),
                            Container(
                              child: Text("Hospitals",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Text("Search nearby hospitals/clinics",
                                  style: TextStyle(fontSize: 10)),
                            )
                          ],
                        ))),
              ],
            ),
          ),
          Container(
            width: 0.75 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image(
                              height: 150,
                              width: 0.65 * width,
                              image: AssetImage("assets/images/doctor.jpg"),
                            ),
                            Container(
                              child: Text("Doctors",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Text("Book Appointments",
                                  style: TextStyle(fontSize: 10)),
                            )
                          ],
                        ))),
              ],
            ),
          ),
          Container(
            width: 0.75 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image(
                              height: 150,
                              width: 0.65 * width,
                              image: AssetImage("assets/images/doctor.jpg"),
                            ),
                            Container(
                              child: Text("Doctors",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Text("Book Appointments",
                                  style: TextStyle(fontSize: 10)),
                            )
                          ],
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
