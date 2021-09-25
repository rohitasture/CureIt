// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({required Key key}) : super(key: key)

//   // ignore: empty_constructor_bodies
//   @override
//   _MyHomePage createState() => _MyHomePage();
// }

// class _MyHomePage extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery.of(context).size.height;
//     final double width = MediaQuery.of(context).size.width;

//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(

//           children: [
            
//            Container(
//             height: 200,
//             child: Stack(
//               children: [
//                 Positioned(
//                     top: 0,
//                     left: 0.05 * width,
//                     child: Material(
//                       child: Container(
//                         height: 180,
//                         width: width * 0.9,
//                         decoration: BoxDecoration(
//                           color: Colors.orange,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     )),
//                 Positioned(
//                     top: 10,
//                     left: 0.05 * width,
//                     child: Card(
//                       elevation: 10.0,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Container(
//                         height: 160,
//                         width: 0.3 * width,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             fit: BoxFit.fill,
//                             image: AssetImage("assets/images/logo.png"),
//                           ),
//                         ),
//                       ),
//                     )),
//                 Positioned(
//                     top: 20,
//                     left: 0.4 * width,
//                     child: Container(
//                       height: 150,
//                       width: 0.5 * width,
//                       child: Column(
//                         children: [
//                           Text("Text", style: TextStyle(fontSize: 20)),
//                           Divider(
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ))
//               ],
//             ),
//           ),

//             SizedBox(height: height*0.05,),


//            Container(
//             height: 200,
//             child: Stack(
//               children: [
//                 Positioned(
//                     top: 0,
//                     left: 0.05 * width,
//                     child: Material(
//                       child: Container(
//                         height: 180,
//                         width: width * 0.9,
//                         decoration: BoxDecoration(
//                           color: Colors.orange,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     )),
//                 Positioned(
//                     top: 10,
//                     left: 0.05 * width,
//                     child: Card(
//                       elevation: 10.0,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Container(
//                         height: 160,
//                         width: 0.4 * width,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             fit: BoxFit.fill,
//                             image: AssetImage("assets/images/logo.png"),
//                           ),
//                         ),
//                       ),
//                     )),
//                 Positioned(
//                     top: 10,
//                     left: 0.5 * width,
//                     child: Card(
//                       elevation: 10.0,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Container(
//                         height: 160,
//                         width: 0.4 * width,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             fit: BoxFit.fill,
//                             image: AssetImage("assets/images/logo.png"),
//                           ),
//                         ),
//                       ),
//                     )),
//               ],
//             ),
//           ),

//             SizedBox(height: height*0.05,),

//             Container(
//           height: 200,
//           child: Stack(
//             children: [
//               Positioned(
//                   top: 0,
//                   left: 0.05 * width,
//                   child: Material(
//                     child: Container(
//                       height: 80,
//                       width: width * 0.9,
//                       decoration: BoxDecoration(
//                         color: Colors.orange,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   )),
//                   Positioned(
//                     top: 10,
//                     left: 0.05 * width,
//                     child: Container(
//                       height: 50,
//                       width: width*0.9,
//                       child: Column(
//                         children: [
//                           Text("Text", style: TextStyle(fontSize: 20)),
//                           Divider(color: Colors.white,),
//                         ],),
//                     )
//                     ),
//                    Positioned(
//                     top: 70,
//                     left: 0.05 * width,
//                     child: Container(
//                       height: 200,
//                       width: width*0.9,
//                       child: Column(
//                         children: [
//                           Text("Text", style: TextStyle(fontSize: 20)),
//                         ],),
//                     )
//                     )

//                 ],
//               ),
//             ),

//             SizedBox(height: height*0.05,),

//            Container(
//           height: 100,
//           child: Stack(
//             children: [
//               Positioned(
//                   top: 0,
//                   left: 0.05 * width,
//                   child: Material(
//                     child: Container(
//                       height: 80,
//                       width: width * 0.9,
//                       decoration: BoxDecoration(
//                         color: Colors.orange,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   )),
//               Positioned(
//                   top: 10,
//                   left: 0.05 * width,
//                   child: Container(
//                     height: 50,
//                     width: width * 0.9,
//                     child: Column(
//                       children: [
//                         Text("Text", style: TextStyle(fontSize: 20)),
//                       ],
//                     ),
//                   )),
//             ],
//           ),
//         ),
//           ]
//         )

//     );
//   }
// }
