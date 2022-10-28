import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Future<int> _calc(int num) async {
    await Future.delayed(Duration(seconds: 1));
    return num++;
  }

  Stream<int> _stream(int num) async* {
    while (num < 100) {
      await Future.delayed(Duration(seconds: 2));
      yield num += 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyWidget'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FutureBuilder(
                future: _calc(5),
                builder: (context, snapshot) => Text(snapshot.data.toString())),
            StreamBuilder(
                stream: _stream(6),
                builder: (context, snapshot) {
                  return Text(snapshot.data.toString());
                })
          ],
        ));
  }
}
