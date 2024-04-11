import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
        children: [
          20.heightBox,
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14)
              ),
              hintText: "Whats on your mind ? ",
              suffixIcon: Icon(Icons.search,size: 32,color: Colors.black,)
            ),
          ).box.width(context.screenWidth-20).make(),
          10.heightBox,
          VxSwiper.builder(
            aspectRatio: 16 / 9,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            itemCount: 5, itemBuilder: (context,int index){
            return Image.network("https://images.unsplash.com/photo-1531956759688-e71cc2586e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",fit: BoxFit.cover,);
          }),
          Card(
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Order Food".text.fontWeight(FontWeight.bold).make(),
                      "From Great Resturant".text.make(),
                      "Near You".text.make()
                    ],
                  ).box.width(context.screenWidth / 1.5).make(),
                  VxSwiper.builder(
                    itemCount: 5,
                    aspectRatio: 8/8,
                    autoPlay: false,
                    itemBuilder: (conetxt ,int index){
                    return Card(
                      child: Image.network("https://images.unsplash.com/photo-1531956759688-e71cc2586e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",fit: BoxFit.cover,),
                    );
                  },).box.height(90).width(110).color(Colors.orange).make()
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}