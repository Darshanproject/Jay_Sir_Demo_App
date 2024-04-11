import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Home%20Pages/First_Page.dart';
import 'package:myapp/Home%20Pages/Fourth_Page.dart';
import 'package:myapp/Home%20Pages/Second_Page.dart';
import 'package:myapp/Home%20Pages/Third_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _slecetedindex = 0;
 static const List<Widget> name =  <Widget>[
  First_page(),
  Second_Page(),
  Third_Page(),
  Fourth_Page()
 ];
  void onitemclick(int index){
    setState(() {
      _slecetedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body:  Center(child: name.elementAt(_slecetedindex),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _slecetedindex,
        // backgroundColor:Color.fromARGB(25, 38, 100, 250),
        
        elevation: 25,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Colors.amber,
          fill: 0.0,
          
        ),
        onTap: onitemclick,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
      ]),
    );
  }
}