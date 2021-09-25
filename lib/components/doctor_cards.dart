/* import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key}) : super(key: key)

  // ignore: empty_constructor_bodies
  
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(

          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                color: Colors.blue,
              ),
            child: Stack(
              children: [
                Positioned(
                  top:80,
                  left:0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  )
                ),
                Positioned(
                  top:115,
                  left:20,
                  child: Text("Home Page", style: TextStyle(fontSize: 20)),
                  )
              ],
            ),
            ),


            SizedBox(height: height*0.05,),


            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top:0,
                    left: 0,
                    child: Material(
                      
                      child: Container(
                        height: 180,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),

                  )),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                      child: Container(
                        height: 160,
                        width: 150,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("img.png"),
                          ),
                        ),
                      ),
                    )),
                  Positioned(
                    top: 20,
                    left: 180,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(color: Colors.white,),
                        ],),
                    )
                    )
                ],
              ),
            ),


            SizedBox(height: height*0.05,),


            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top:0,
                    left: 0,
                    child: Material(
                      
                      child: Container(
                        height: 180,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),

                  )),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                      child: Container(
                        height: 160,
                        width: 150,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("img.png"),
                          ),
                        ),
                      ),
                    )),
                  Positioned(
                    top: 10,
                    left: 180,
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                      child: Container(
                        height: 160,
                        width: 150,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("img.png"),
                          ),
                        ),
                      ),
                    )),
                ],
              ),
            ),


            SizedBox(height: height*0.05,),

            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top:0,
                    left: 0,
                    child: Material(
                      
                      child: Container(
                        height: 180,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),

                  )),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 50,
                      width: width*0.8,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(color: Colors.white,),
                        ],),
                    )
                    ),
                   Positioned(
                    top: 70,
                    left: 10,
                    child: Container(
                      height: 200,
                      width: width*0.8,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(color: Colors.white,),
                        ],),
                    )
                    )

                ],
              ),
            ),

            SizedBox(height: height*0.05,),

            Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top:0,
                    left: 0,
                    child: Material(
                      
                      child: Container(
                        height: 180,
                        width: width*0.9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),

                  )),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 50,
                      width: width*0.8,
                      child: Column(
                        children: [
                          Text("Text", style: TextStyle(fontSize: 20)),
                          Divider(color: Colors.white,),
                        ],),
                    )
                    ),

                ],
              ),
            ),
          ]
        )

    );
  }
}
 */