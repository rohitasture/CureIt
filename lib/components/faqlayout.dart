import 'package:cureit/main.dart';
import 'package:cureit/screens/home_page/components/CustomShapeClipper.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';
//import 'components/body.dart';

Color firstColor = Color(0xFF9FA8DA);
Color secondColor = Color(0xFF5C6BC0);
List<String> locations = ['Bengalore (BLR)', 'New Delhi (DL)'];
const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

class FAQLayout extends StatefulWidget {
  final String heading;
  const FAQLayout(this.heading);
  // const FAQLayout({Key? key}) : super(key: key);

  @override
  _FAQLayoutState createState() => _FAQLayoutState();
}

class _FAQLayoutState extends State<FAQLayout> {
  var selectedLocationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 200.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${widget.heading}',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
