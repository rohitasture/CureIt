import 'package:flutter/material.dart';

class HealthIssues extends StatelessWidget {
  const HealthIssues({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      color: Colors.blue[50],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image(
                              height: 150,
                              width: 0.4 * width,
                              image: AssetImage("assets/images/doctor.jpg"),
                            ),
                            Container(
                              child: Text("Cough"),
                            )
                          ],
                        ))),
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
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
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
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
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
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
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Positioned(
                    top: 15,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
