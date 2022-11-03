import 'dart:math';

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
            //Services(),
            //News(),
            Container(
              height: 150,
              color: Colors.amber,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Flexible(
                  child: ListTile(
                    title: SizedBox.square(
                      dimension: 100,
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                    ),
                  ),
                ),
              ),
            ),

            // Container(
            //   height: 185,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, index) => Row(
            //             children: [
            //               Container(
            //                 margin: EdgeInsets.only(
            //                   left: 10,
            //                 ),
            //                 height: 190,
            //                 width: 150,
            //                 decoration: BoxDecoration(),
            //                 child: Column(
            //                   children: [
            //                     Container(
            //                       height: 150,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.only(
            //                             topRight: Radius.circular(10),
            //                             topLeft: Radius.circular(10)),
            //                         image: DecorationImage(
            //                             image: NetworkImage(
            //                                 "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
            //                             fit: BoxFit.cover),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 5,
            //                     ),
            //                     Container(
            //                       height: 30,
            //                       child: Column(
            //                         children: [
            //                           Text(
            //                             'snapshot.data![index].title.toString()',
            //                             overflow: TextOverflow.clip,
            //                             maxLines: 2,
            //                             style: TextStyle(
            //                                 fontSize: 15,
            //                                 fontWeight: FontWeight.w600),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           )),
            // ),
          ],
        ),
      ),
    );
  }
}
