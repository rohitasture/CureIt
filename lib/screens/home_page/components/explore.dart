import 'package:cureit/screens/book_appointment/book_appointment.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: 210.0,
      //color: Colors.blue[50],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, BookAppointment.routeName);
              },
              child: Container(
                width: 0.75 * width,
                child: Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5.0),
                        child: Card(
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  height: 140,
                                  width: 0.65 * width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/doctors.jpg')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0.0)),
                                    // color: Colors.redAccent,
                                  ),
                                ),
                                Container(
                                  child: Text("Doctors",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("Book Appointments",
                                      style: TextStyle(fontSize: 10)),
                                )
                              ],
                            ))),
                  ],
                ),
              )),
          Container(
            width: 0.75 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(5.0),
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                              height: 140,
                              width: 0.65 * width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/hispital.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                // color: Colors.redAccent,
                              ),
                            ),
                            Container(
                              child: Text("Hospitals",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Text("Find nearby hospitals",
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
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                              height: 140,
                              width: 0.65 * width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/doctors.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                // color: Colors.redAccent,
                              ),
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
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                              height: 140,
                              width: 0.65 * width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/doctors.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                // color: Colors.redAccent,
                              ),
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
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                              height: 140,
                              width: 0.65 * width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/doctors.jpg')),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                // color: Colors.redAccent,
                              ),
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
        ],
      ),
    );
  }
}
