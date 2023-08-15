// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// import 'package:flutter/material.dart';
// // create some values
// Color pickerColor = Color(0xff443a49);
// Color currentColor = Color(0xff443a49);
//
// // ValueChanged<Color> callback
// void changeColor(Color color) {
//  // setState(() => pickerColor = color);
// }
//
// // raise the [showDialog] widget
// showDialog( context,
// child: AlertDialog(
// title: const Text('Pick a color!'),
// content: SingleChildScrollView(
// child: ColorPicker(
// pickerColor: pickerColor,
// onColorChanged: changeColor,
// ),
// actions: <Widget>[
// ElevatedButton(
// child: const Text('Got it'),
// onPressed: () {
// setState(() => currentColor = pickerColor);
// Navigator.of(context).pop();
// },
// ),
// ],
// ),
// ))