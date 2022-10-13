import 'package:flutter/material.dart';

class Loggedin extends StatefulWidget {
  @override
  State<Loggedin> createState() => _LoggedinState();
}

class _LoggedinState extends State<Loggedin> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: size.height * 0.4,
              width: size.width,
              color: Colors.green,
              child: AnimatedAlign(
                alignment: click ? Alignment.topLeft : Alignment.topRight,
                duration: Duration(seconds: 2),
                child: Text(
                  'Your logged in!',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
                top: size.height * 0.15,
                left: size.width * 0.15,
                child: Container(
                  height: 25,
                  width: 25,
                  color: Colors.tealAccent,
                )),
            Positioned(
                top: size.height * 0.2,
                left: size.height * 0.2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    color: click ? Colors.pinkAccent : Colors.lightBlue,
                    height: click ? 150 : 75,
                    width: click ? 75 : 150,
                  ),
                ))
          ]),
          ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: size.height * 0.2,
                color: Colors.redAccent,
                padding: EdgeInsets.all(5),
              );
            },
          )
        ],
      ),
    );
  }
}
