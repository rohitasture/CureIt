import 'package:cureit/components/basiclayout.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';

class FAQS extends StatelessWidget {
  const FAQS({Key? key}) : super(key: key);
  static String routeName = "/faq";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          BasicLayout("FAQ Page"),
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
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Container(
                      height: 50,
                      width: width * 0.9,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 70,
                    left: 0.05 * width,
                    child: Container(
                      height: 200,
                      width: width * 0.9,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
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
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Container(
                      height: 50,
                      width: width * 0.9,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 70,
                    left: 0.05 * width,
                    child: Container(
                      height: 200,
                      width: width * 0.9,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
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
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                Positioned(
                    top: 10,
                    left: 0.05 * width,
                    child: Container(
                      height: 50,
                      width: width * 0.9,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 70,
                    left: 0.05 * width,
                    child: Container(
                      height: 200,
                      width: width * 0.9,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
        ]),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.faqPage),
    );
  }
}
