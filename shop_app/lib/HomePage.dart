import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Shop'),
      // ),
      body: Stack(children: [
        Container(
          color: Colors.teal,
        ),
        Positioned(
          top: size.height * 0.051,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Shop',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Search all..',
                ),
              ),
              // Container(
              //   child: TextField(
              //     decoration: InputDecoration(
              //       fillColor: Colors.white,
              //       labelText: 'Search all..',
              //     ),
              //   ),
              // )
            ],
          ),
        )
      ]),
    );
  }
}
