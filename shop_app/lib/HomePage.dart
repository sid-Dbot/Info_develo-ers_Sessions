import 'package:flutter/material.dart';

import './ListViews/listview_categoryitems.dart';
import './ListViews/listview_horizontal_categories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green[900],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Text(
            //   'Categories',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 25,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            Card(
              elevation: 9,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white)),
                  labelText: 'Search all..',
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: Categories_types(),
            ),
            SizedBox(
              height: 300,
              child: Category_item(),
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: null,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: null,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: null,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: null,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: null,
        ),
      ]),
    );
  }
}
