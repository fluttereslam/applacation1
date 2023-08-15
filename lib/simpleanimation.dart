import 'package:flutter/material.dart';

class SimpleFlutterAnimation extends StatefulWidget {
  const SimpleFlutterAnimation({Key? key}) : super(key: key);

  @override
  State<SimpleFlutterAnimation> createState() => _SimpleFlutterAnimationState();
}

class _SimpleFlutterAnimationState extends State<SimpleFlutterAnimation> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();

    // Defining controller with animation duration of two seconds
    controller =  AnimationController(vsync: this, duration: Duration(seconds: 2));

    // Defining both color and size animations
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller);
    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);

    // Rebuilding the screen when animation goes ahead
    controller.addListener(() {
      setState(() {});
    });

    // Repeat the animation after finish
    controller.repeat();
    //
    //For single time
    //controller.forward()

    //Reverses the animation instead of starting it again and repeats
    //controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Demo"),
      ),
      body: Center(
        child: Container(
          height: sizeAnimation.value,
          width: sizeAnimation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}