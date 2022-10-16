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
            top: size.height*0.1,
            child: child)
          Positioned(
            top: size.height * 0.2,
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
