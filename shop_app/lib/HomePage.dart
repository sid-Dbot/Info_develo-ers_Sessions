import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            color: Colors.grey[800],
          ),
          Positioned(
              top: size.height * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Shop',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Card(
                      child: TextField(
                    decoration: InputDecoration(
                        label: Text('Search All..'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        )),
                  )),
                ],
              )),
          Positioned(
            top: size.height * 0.22,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Column(children: []),
            ),
          )
        ],
      ),
    );
  }
}
