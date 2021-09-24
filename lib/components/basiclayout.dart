import 'package:cureit/main.dart';
import 'package:cureit/screens/home_page/components/CustomShapeClipper.dart';
import 'package:flutter/material.dart';
import 'package:cureit/components/custom_bottom_nav_bar.dart';
import 'package:cureit/enums.dart';
//import 'components/body.dart';

Color firstColor = Color(0xFFF47D15);
Color secondColor = Color(0xFFEF772C);
List<String> locations = ['Bengalore (BLR)', 'New Delhi (DL)'];
const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

class BasicLayout extends StatefulWidget {
  final String heading;
  const BasicLayout(this.heading);
  // const BasicLayout({Key? key}) : super(key: key);

  @override
  _BasicLayoutState createState() => _BasicLayoutState();
}

class _BasicLayoutState extends State<BasicLayout> {
  var selectedLocationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      PopupMenuButton<int>(
                        onSelected: (index) {
                          setState(() {
                            selectedLocationIndex = index;
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<int>>[
                          PopupMenuItem<int>(
                            value: 0,
                            child: Text(
                              locations[0],
                              style: dropDownMenuItemStyle,
                            ),
                          ),
                          PopupMenuItem<int>(
                            value: 1,
                            child: Text(
                              locations[1],
                              style: dropDownMenuItemStyle,
                            ),
                          )
                        ],
                        child: Row(
                          children: <Widget>[
                            Text(
                              locations[0],
                              style: dropDownLabelStyle,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'This page is \n${widget.heading}',
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
