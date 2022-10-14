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
          left: size.width * 0.051,
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
              Container(
                height: size.height * 0.071,
                width: size.width * 0.5,
                child: Card(
                  elevation: 7,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Search all..',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: size.height * 0.15,
            left: 0,
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelText: 'Search all..',
                ),
              ),
            ))
      ]),
    );
  }
}
