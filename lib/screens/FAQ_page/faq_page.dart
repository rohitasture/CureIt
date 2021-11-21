import 'package:cureit/components/basiclayout.dart';
import 'package:cureit/components/faqlayout.dart';
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
          FAQLayout("Frequently Asked Questions \n (FAQs)"),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            elevation: 8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'How do I get my blood pressure checked?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Blood pressure checks are provided complimentary at each of our locations. Call the clinic nearest you for details.",
                          style: TextStyle(fontSize: 16),
                        )),
                    TextButton(
                      child: const Text('See More'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            elevation: 8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'How do I get my blood pressure checked?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Blood pressure checks are provided complimentary at each of our locations. Call the clinic nearest you for details.",
                          style: TextStyle(fontSize: 16),
                        )),
                    TextButton(
                      child: const Text('See More'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            elevation: 8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'How do I get my blood pressure checked?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Blood pressure checks are provided complimentary at each of our locations. Call the clinic nearest you for details.",
                          style: TextStyle(fontSize: 16),
                        )),
                    TextButton(
                      child: const Text('See More'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            elevation: 8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'How do I get my blood pressure checked?',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Blood pressure checks are provided complimentary at each of our locations. Call the clinic nearest you for details.",
                          style: TextStyle(fontSize: 16),
                        )),
                    TextButton(
                      child: const Text('See More'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.faqPage),
    );
  }
}
