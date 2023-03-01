import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:whats_app_demo/Consts/colors.dart';
import 'homepage.dart';

void main(){
  runApp(MaterialApp(home: Splash()));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Whats_App(),
        )));
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.staggeredDotsWave(color: uicolor, size: 150)
      ),
    );
  }
}



