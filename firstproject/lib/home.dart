import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: Column(children: [
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(7),
              ),
            )
          ],
        )
      ]),
    );
  }
}
