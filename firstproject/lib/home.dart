import 'dart:html';

import 'package:carousel_slider/utils.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int index = 5;

  int pageindex = 0;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider.builder(
            itemCount: index,
            options: CarouselOptions(
              enableInfiniteScroll: false,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                pageindex = index;
                setState(() {});
              },
              autoPlay: true,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            itemBuilder: (context, index, realindex) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      offset: Offset(2, 3),
                    )
                  ]),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 8,
                child: Image.network(
                  fit: BoxFit.fill,
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrceo--QeW1CZHYUSfdy4q6BNRvT9np6x0BQ&usqp=CAU",
                ),
              ),
            ),
          ),
          Center(
            child: CarouselIndicator(
              height: 5,
              width: 5,
              activeColor: Colors.grey,
              color: Colors.black,
              count: index,
              index: pageindex,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Services"),
              TextButton(
                onPressed: () {},
                child: Text("See all>"),
              )
            ],
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.3,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) => Container(
          //       height: MediaQuery.of(context).size.height * 0.3,
          //       width: 100,
          //       color: Colors.redAccent,
          //     ),
          //     itemCount: 4,
          //   ),
          // ),
          Row(
            children: [
              Text('News'),
              TextButton(
                onPressed: () {},
                child: Text('See All>'),
              )
            ],
          )
        ],
      ),
    );
  }
}
