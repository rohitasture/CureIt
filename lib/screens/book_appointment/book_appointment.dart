import 'package:cureit/components/basiclayout.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);
  static String routeName = "/book";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // body: Column(
      //   children: <Widget>[
      //     BasicLayout("Book appointment Page"),

      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          BasicLayout("Book appointment Page"),
          Container(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Material(
                      child: Container(
                        height: 180,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                Positioned(
                    top: 20,
                    left: 0.05 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 160,
                        width: 0.3 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/logo.png"),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 20,
                    left: 0.4 * width,
                    child: Container(
                      height: 150,
                      width: 0.5 * width,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(
                            color: Colors.white,
                          ),
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
                    top: 10,
                    left: 0.05 * width,
                    child: Material(
                      child: Container(
                        height: 180,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                Positioned(
                    top: 20,
                    left: 0.05 * width,
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 160,
                        width: 0.3 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/logo.png"),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 20,
                    left: 0.4 * width,
                    child: Container(
                      height: 150,
                      width: 0.5 * width,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.bookAppointment),
    );
  }
}
