import 'package:firstproject/widgets/carousel_Slider.dart';
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
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Center(
            child: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Carousel_Slider(),
          //Services(),
          //News(),
        ],
      ),
    );
  }
}
