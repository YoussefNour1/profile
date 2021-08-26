import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement Drawer
    return Drawer(
      child: ListView(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(3, 20, 5, 0),
              width: double.infinity,
              color: Colors.deepPurple,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/img1.jpg"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildText("Youssef Nour", Colors.white, 20),
                  SizedBox(
                    height: 5,
                  ),
                  buildText("yousnour222@gmail.com", Colors.white,20),
                  SizedBox(
                    height: 15,
                  )
                ],
              )),
          SizedBox(height: 10,),
          buildListTile("Home", Icons.home),
          buildListTile("Settings", Icons.settings),
          buildListTile("About", Icons.account_circle),
        ],
      ),
    );
  }
}

// this function is used to build List Tiles
ListTile buildListTile(String text, IconData icon) {
  return ListTile(
    title: buildText(text,Colors.black, 20),
    leading: Icon(icon),
    onTap: (){},
  );
}
// this function is used to build text Widgets
Text buildText(String text, Color color, double size) {
  return Text(
    text,
    style: TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w400),
  );
}