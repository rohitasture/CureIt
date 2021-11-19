import 'package:cureit/main.dart';
import 'package:flutter/material.dart';
import 'package:cureit/screens/home_page/components/CustomShapeClipper.dart';

Color firstColor = Color(0xFF0277BD);
Color secondColor = Color(0xFF4FC3F7);
List<String> locations = ['Bengalore (BLR)', 'New Delhi (DL)'];
const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

class HomeScreenTopContainer extends StatefulWidget {
  const HomeScreenTopContainer({Key? key}) : super(key: key);

  @override
  _HomeScreenTopContainerState createState() => _HomeScreenTopContainerState();
}

class _HomeScreenTopContainerState extends State<HomeScreenTopContainer> {
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
                  'Search for\n doctors near you',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: locations[1]),
                        style: dropDownMenuItemStyle,
                        cursorColor: appTheme.primaryColor,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            child: Icon(Icons.search, color: Colors.black),
                          ),
                          border: InputBorder.none,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
