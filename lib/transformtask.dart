import 'package:flutter/material.dart';
import 'dart:math' as math;

class Transformtask extends StatefulWidget {
  const Transformtask({Key? key}) : super(key: key);

  @override
  State<Transformtask> createState() => _TransformExampleState();
}

class _TransformExampleState extends State<Transformtask>  with SingleTickerProviderStateMixin{
  late AnimationController animationController ;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this , duration:  const Duration(milliseconds: 1000));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          title:  Text( "Transform"),
        ),
        floatingActionButton:  FloatingActionButton(
          child:  Icon(
            Icons.play_arrow ,
            size: 20,
          ),


          onPressed: (){
            if(animationController.isDismissed){
              animationController.forward();
              setState((){

              });
            }else{
              animationController.reverse();
              setState((){

              });
            }

          },
        ),
        body:  Center(
            child:AnimatedBuilder(
              animation: this.animationController,
              builder: (context, child) {
                return transForm();
              },
            )
        )

    );
  }


  Widget transForm(){
    return Transform(transform: Matrix4.skew(0.5 ,0.5),child:
    Container(
      width: 150,
      height: 150,
      color: Colors.red,
      child: Image.network("https://static8.depositphotos.com/1276278/1069/i/450/depositphotos_"
          "10691559-stock-photo-red-sports-car-at-sunset.jpg")
          //"https://previews.123rf.com/images/andersonrise/andersonrise1603/andersonrise160300790/54128225-close-up-por"
    //"trait-of-a-muslim-young-woman-wearing-a-head-scarf-indoor.jpg?fj=1"),
          //"http://cardxpress.net/image/cache/1-500x500.jpg"),
     ),


    );
  }





}