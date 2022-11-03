import 'package:firstproject/widgets/News_listView.dart';
import 'package:firstproject/widgets/carousel_Slider.dart';
import 'package:firstproject/widgets/services_liseView.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Carousel_Slider(),
            Services(),
            News(),
          ],
        ),
      ),
    );
  }
}
