import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Home%20Pages/Home_Screen.dart';
import 'package:myapp/Screen/AuthScreen/LoginScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({super.key});

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/login.json"))
          ),
          child: SafeArea(
            child: Form(child: Column(
              children: [
                Lottie.asset("assets/login.json").box.height(250).make(),
                 Text(" Register",style: GoogleFonts.berkshireSwash(textStyle:TextStyle(fontSize: 48)),),
            "Create your account".text.size(16).makeCentered(),
            20.heightBox,
                Column(
                  children: [
                    TextFormField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                        ),
                        hintText: "Name",
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                    10.heightBox,
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                        ),
                        hintText: "Email",
                        
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                    10.heightBox,
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                        ),
                        hintText: "Phone Number",
                        
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                    10.heightBox,
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                        ),
                        hintText: "Password",
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                    
                    10.heightBox,
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(value: value, onChanged: (newvalue){
                        setState(() {
                          value = newvalue!;
                        });
                      },activeColor: Colors.orangeAccent[700],),
                       "Terms & conctions will be applied \n of using privicy".text.makeCentered(),
                       
                    ],
                   ),
                    (context.screenHeight / 12).heightBox,
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
                          child: "Signup".text.size(26).fontWeight(FontWeight.bold).white.makeCentered(),
                        ),
                      ),)
                    ),
                    5.heightBox,
                    TextButton(onPressed: (){
                      Get.offAll(()=>Login());
                    }, child: "Alredy have an Account ? Login ".text.color(Colors.black).fontWeight(FontWeight.w500).size(15).make())
                  ],
                ).box.padding(EdgeInsets.symmetric(horizontal: 50,vertical: 10)).make()
              ],
            )),
          ),
        ),
      ),
    );
  }
}