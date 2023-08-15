
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';


void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Colorpicker(),
    );
  }
}


class Colorpicker extends StatefulWidget {
  const Colorpicker({Key? key}) : super(key: key);

  @override
  State<Colorpicker> createState() => _MyProfileState();
}

class _MyProfileState extends State<Colorpicker> {

  void changecolor(Color color){
    setState(() {
      pickerColor=color;
    });


  }
  Color color= Colors.green;
  Color pickerColor=Colors.blue;
  //Color ? myColor  =  Colors.grey[10];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       // backgroundColor: pickerColor,
        appBar:
        AppBar(


          backgroundColor: pickerColor,
            title:Text("Create account",style: TextStyle(color: Colors.black)) ,

    ),

    body: Center(
      child: MaterialButton(
        onPressed: (){
          showDialog(context: context, builder: (context)=>AlertDialog(content: SingleChildScrollView(
            child: ColorPicker(onColorChanged: changecolor,pickerColor: pickerColor,),
          ),
            actions: [
              TextButton(onPressed: (){
                changecolor(pickerColor);
                Navigator.pop(context);

                },
                  child: Text("close")),
            ],
          )
          );
        },
        color: pickerColor,
        child: Text("piker"),
      ),

    ),






    );
  }}