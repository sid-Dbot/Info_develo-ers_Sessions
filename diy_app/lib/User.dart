import 'package:flutter/material.dart';

class userPage extends StatelessWidget {
  String? name;
  userPage({required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(name.toString())),
    );
  }
}
