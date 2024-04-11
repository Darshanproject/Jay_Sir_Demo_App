import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _slecetedindex = 0;
 static const List<Widget> name =  <Widget>[Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),];
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