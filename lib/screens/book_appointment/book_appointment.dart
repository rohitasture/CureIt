import 'package:cureit/components/basiclayout.dart';
import 'package:cureit/components/faqlayout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';
import 'package:cureit/screens/home_page/colorScheme.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);
  static User? user = FirebaseAuth.instance.currentUser;
  static String routeName = "/book";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            FAQLayout(""),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Select a Doctor or Category",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          margin: EdgeInsets.only(top: 10),
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              categoryContainer("category7.png", "CT-Scan"),
                              categoryContainer("category1.png", "Ortho"),
                              categoryContainer("category2.png", "Dietician"),
                              categoryContainer("category3.png", "Physician"),
                              categoryContainer("category4.png", "Paralysis"),
                              categoryContainer("category5.png", "Cardiology"),
                              categoryContainer("category6.png", "MRI - Scan"),
                              categoryContainer("category8.png", "Gynaecology"),
                            ],
                          ),
                        ),
                        Text(
                          "Chief Doctors",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 400,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              children: <Widget>[
                                createDocWidget("doc1.png", "Susan Thomas"),
                                createDocWidget("doc2.png", "Paul Barbara"),
                                createDocWidget("doc3.png", "Nancy Williams"),
                                createDocWidget("doc1.png", "Susan Thomas"),
                                createDocWidget("doc2.png", "Paul Barbara"),
                                createDocWidget("doc3.png", "Nancy Williams"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.bookAppointment),
    );
  }

  Container categoryContainer(String imgName, String title) {
    return Container(
      width: 130,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/category/$imgName'),
          Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
          )
        ],
      ),
    );
  }

  Container createDocWidget(String imgName, String docName) {
    return Container(
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: docContentBgColor,
          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/docprofile/$imgName'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dr. $docName",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: Text(
                        "A brief about the doctor to be \nadded here. This is more like an \nintroduction about the doctor",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
