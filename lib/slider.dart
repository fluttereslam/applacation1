import 'package:flutter/material.dart';

import 'log in.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 0;

  Color ? myColor  =  Colors.white;

  @override
  Widget build(BuildContext context) {
    return Slider(
      thumbColor: myColor,
      activeColor:myColor,
      value: _currentSliderValue,
      max: 100,
      divisions: 2,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
          if(_currentSliderValue==50){
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_In()),);
            myColor = Colors.orangeAccent;

          }


        });
      },
    );
  }
}