import 'package:cureit/screens/home_page/healthinfo.dart';
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
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Card(
                          shadowColor: Colors.blue[100],
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image(
                                height: 150,
                                width: 0.4 * width,
                                image: AssetImage("assets/images/anxiety.png"),
                                fit: BoxFit.cover,
                              ),
                              Container(
                                child: Text("Anxiety"),
                              )
                            ],
                          )),
                      onTap: () {
                        Navigator.pushNamed(context, HealthInfoPage.routeName);
                      },
                    )),
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image(
                                height: 150,
                                width: 0.4 * width,
                                image: AssetImage("assets/images/fever.png"),
                                fit: BoxFit.cover,
                              ),
                              Container(
                                child: Text("Fever"),
                              )
                            ],
                          )),
                      onTap: () {
                        Navigator.pushNamed(context, HealthInfoPage.routeName);
                      },
                    )),
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image(
                                height: 150,
                                width: 0.4 * width,
                                image: AssetImage("assets/images/cough.jpg"),
                                fit: BoxFit.cover,
                              ),
                              Container(
                                child: Text("Cough"),
                              )
                            ],
                          )),
                      onTap: () {
                        Navigator.pushNamed(context, HealthInfoPage.routeName);
                      },
                    )),
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image(
                                height: 150,
                                width: 0.4 * width,
                                image: AssetImage("assets/images/headache.jpg"),
                                fit: BoxFit.cover,
                              ),
                              Container(
                                child: Text("Headache"),
                              )
                            ],
                          )),
                      onTap: () {
                        Navigator.pushNamed(context, HealthInfoPage.routeName);
                      },
                    )),
              ],
            ),
          ),
          Container(
            width: 0.5 * width,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image(
                                height: 150,
                                width: 0.4 * width,
                                image:
                                    AssetImage("assets/images/stomachache.png"),
                              ),
                              Container(
                                child: Text("Stomach ache"),
                              )
                            ],
                          )),
                      onTap: () {
                        Navigator.pushNamed(context, HealthInfoPage.routeName);
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
