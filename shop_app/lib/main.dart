import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        title: 'Shop',
        home: Scaffold(
          // appBar: AppBar(
          //   title: Text('Shop'),
          // ),
          body: Stack(children: [
            Container(
              color: Colors.teal,
            ),
            Positioned(
              top: size.height * 0.2,
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
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
