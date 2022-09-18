import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SpachScreen extends StatefulWidget {
  const SpachScreen({super.key});

  @override
  State<SpachScreen> createState() => _SpachScreenState();
}

class _SpachScreenState extends State<SpachScreen> {
  void initState(){
    //is a async programming it will not unitl this line get execute 
    Future.delayed(
      Duration(
        seconds: 5,
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.3,
      child: Lottie.asset('assets/splash.json'),
    );
  }
}