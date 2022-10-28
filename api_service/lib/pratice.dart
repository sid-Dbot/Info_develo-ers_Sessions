import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Future<int> _calc(int num) async {
    return num++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyWidget'),
        ),
        body: FutureBuilder(
            future: _calc(5),
            builder: (context, snapshot) => Text(snapshot.data.toString())));
  }
}
