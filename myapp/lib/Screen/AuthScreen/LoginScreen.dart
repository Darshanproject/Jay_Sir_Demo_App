import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Home%20Pages/Home_Screen.dart';
import 'package:myapp/Screen/AuthScreen/Signuppage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _fromkey = GlobalKey<FormState>();
  bool slectedvalue = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Form(
          key: _fromkey,
          child: Column(
          children: [
            10.heightBox,
            Lottie.asset("assets/login.json").box.height(250).make(),
            //berkshireSwash
            Text("Welcome Back",style: GoogleFonts.berkshireSwash(textStyle:TextStyle(fontSize: 42)),),
            "Login to your account".text.size(18).makeCentered(),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                TextFormField(
                  controller: email,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                hintText: "Email / username / phone number",
                suffixIcon: Icon(Icons.email),
                        fillColor: Colors.white,
                        filled: true
              ),
            ),
            20.heightBox,
            TextFormField(
              controller: password,
              obscureText: slectedvalue,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14)
                ),
                hintText: "password",
                        fillColor: Colors.white,
                        filled: true,
                suffixIcon: slectedvalue == true ?IconButton(onPressed: (){
                  setState(() {
                    slectedvalue = false;
                  });
                }, icon: Icon(Icons.visibility,color: Colors.grey,)):IconButton(onPressed: (){
                  setState(() {
                    slectedvalue = true ;
                  });
                }, icon: Icon(Icons.visibility_off,color: Colors.green,))
              ),
            ),
            10.heightBox,

            // GestureDetector(
            //   onTap: () {
            //     Get.offAll(()=>Signup_Screen());
            //   },
            //   child: "Create an account ? ".text.color(Colors.blue).size(18).make(),
            // ),
            // 5.heightBox,
            Row(
              children: [
                Checkbox(value: value, onChanged: (newvalue){
                  setState(() {
                    value = newvalue!;
                  });
                },activeColor: Colors.orangeAccent[700],),
                "Remember Me".text.black.size(16).make()
              ],
            ),
            20.heightBox,
                               (context.screenHeight / 6).heightBox,
                    SizedBox(
                      width: context.screenWidth - 20,
                      child: GestureDetector(
                        onTap:value != true ? () {
                          
                        }:(){
                          Get.offAll(()=>Home_Page());
                        },
                        child: Container(
                        decoration: BoxDecoration(
                          color: value != true?Colors.grey: Colors.orangeAccent[700],
                          borderRadius: BorderRadius.circular(24)
                        ),
                        height: 60,
                        width: context.screenWidth - 80,
                        child: Center(
                          child: "Login".text.size(26).fontWeight(FontWeight.bold).white.makeCentered(),
                        ),
                      ),)
                    ),
                    5.heightBox,
                    TextButton(onPressed: (){
                      Get.offAll(()=>Signup_Screen());
                    }, child: "Don't have an Account ? Signup ".text.size(15).make())
              ],
            ).box.padding(EdgeInsets.symmetric(horizontal: 20,vertical: 10)).rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 15,vertical: 5)).makeCentered()
          ],
        )),
      ),
    );
  }
}