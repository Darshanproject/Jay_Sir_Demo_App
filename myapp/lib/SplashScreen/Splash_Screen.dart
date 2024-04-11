import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Home%20Pages/Home_Screen.dart';
import 'package:myapp/Screen/AuthScreen/LoginScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 3), () => Get.offAll(()=>Login()));
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/Splash.json").box.make(),
            "Welcome to JunJunwala Food Dilevery App".text.size(20).fontWeight(FontWeight.w500).make()
          ],
        ),
      ),
    );
  }
}