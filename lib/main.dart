import 'package:flutter/material.dart';
import 'package:profile/mainDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Profile"),
          centerTitle: true,
        ),
        drawer: MainDrawer(),
        endDrawer: Drawer(),
        body: MyProfile(),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("images/img1.jpg"),
              radius: 80,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 20,),
              child: Column(
                children: [
                  buildText("Name: Youssef Nour", Colors.black, 28),
                  SizedBox(height: 5,),
                  buildText("Collage: FCAI-CU", Colors.black, 28),
                  SizedBox(height: 5,),
                  buildText("Age: 21", Colors.black,28),
                ],
              ),
            ),
        ],
      ),
    );
  }
}