import 'package:flutter/material.dart';
void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Curvedanimatin (),
    );
  }
}
class Curvedanimatin extends StatefulWidget {
  const Curvedanimatin ({Key? key}) : super(key: key);

  @override
  State<Curvedanimatin > createState() => _SimpleFlutterAnimationState();
}

class _SimpleFlutterAnimationState extends State<Curvedanimatin > with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation titleAnimation;
  late Animation postAnimation;
  late Animation imageAnimation;

  @override
  void initState() {
    super.initState();
    animationcontroller =  AnimationController(vsync: this, duration: Duration(seconds: 2));
    imageAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(parent: animationcontroller, curve: Curves.fastOutSlowIn));
    titleAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationcontroller, curve: Interval(0.5, 1,curve: Curves.fastOutSlowIn)));
    postAnimation =Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationcontroller, curve: Interval(0.8, 1,curve: Curves.fastOutSlowIn)));
    animationcontroller.forward();


  }
  @override
  void dispose(){
    super.dispose();
    animationcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(animation: animationcontroller,
        builder: (BuildContext context,Widget? child){
      return Scaffold(
        appBar: AppBar(
          title: Text("curved animation"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Transform(

                  transform: Matrix4.translationValues(
                    imageAnimation.value * width, 0, 0),
                   child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://static8.depositphotos.com/1276278/1069/i/450/depositphotos_10691559-stock-photo-red-sports-car-at-sunset.jpg"),
                    fit: BoxFit.cover
                    )
                  ),
                ),
                ),
                Transform(

                  transform: Matrix4.translationValues(
                      titleAnimation.value * width, 0, 0),
                  child: Container(
                    padding: EdgeInsets.all(40),
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                        ),
                   child: Center(
                                child: Text("curved anmation ",
                                  style: TextStyle(fontSize: 40 ,
                                      color: Colors.white,fontWeight: FontWeight.bold),),

                    ),
                  ),
                ),
              ],
            ),
            Transform(

              transform: Matrix4.translationValues(
                  postAnimation.value * width, 0, 0),
              child: Container(
                padding: EdgeInsets.all(40),
                //height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,

                  child: Text(" curved anmation   curved anmation   curved anmation   curved anmation   curved anmation  "
                      " curved anmation   curved anmation  v curved anmation   curved anmation  ",
                    style: TextStyle(fontSize: 20 ),),


              ),
            ),











          ],
        ),
      );
        }
    );
  }
}