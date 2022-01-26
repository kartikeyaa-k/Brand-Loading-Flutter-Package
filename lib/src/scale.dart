import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scale extends StatefulWidget{
  final String logo;
  final Curve animationType;
  final int speed;
  final bool isClockWise;
  final Color logoBackdropColor;
  final double height;
  final double width;
  final BoxFit boxFit;

  const Scale({
    Key? key,
    required this.logo,
    required this.animationType,
    required this.speed,
    required this.isClockWise,
    required this.logoBackdropColor,
    required this.height,
    required this.width,
    required this.boxFit,
  }) : super(key: key);

  @override
  _ScaleState createState() => _ScaleState();
}

class _ScaleState extends State<Scale> with SingleTickerProviderStateMixin{

  late AnimationController controller;

  late Animation<double> scaleAnimation;

  void initState(){
    controller =  AnimationController(
      duration:  Duration(milliseconds: widget.speed),
      vsync: this,

    );

    scaleAnimation = CurvedAnimation(parent: controller, curve: widget.animationType);
    controller.addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);


    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return new Center(
      child: Material(
          color: Colors.transparent,
          child : ScaleTransition(
            scale: scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                color: widget.logoBackdropColor,
              ),
              child: new Image.asset(
                widget.logo,
                fit: widget.boxFit,

              ),
            ),
          )

      ),
    );
  }
}