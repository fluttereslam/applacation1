// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
//
// class Example extends StatefulWidget {
//   const Example({Key? key}) : super(key: key);
//
//   @override
//   State<Example> createState() => _ExampleState();
// }
//
// class _ExampleState extends State<Example> {
//   final _drawerController = ZoomDrawerController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar:  AppBar(),
//         body: ZoomDrawer(
//           controller: _drawerController,
//           style: DrawerStyle.DefaultStyle,
//           menuScreen: Container(
//             color: Colors.red,
//             child: Text("menuScreen"),
//           ),
//           mainScreen: Container(
//             color: Colors.green,
//             child: Text("menuScreen"),
//           ),
//           borderRadius: 24.0,
//           showShadow: true,
//           angle: -12.0,
//           backgroundColor: Colors.grey[300],
//           slideWidth: MediaQuery.of(context).size.width*.65,
//           openCurve: Curves.fastOutSlowIn,
//           closeCurve: Curves.bounceIn,
//         )
//     );
//   }
// }