import 'package:flutter/material.dart';

class MoviesForm extends StatelessWidget {
  List textfieldData = ['Title', 'Genre', 'Released Year', 'Poster Url'];
  List iconfieldData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: textfieldData.length,
          itemBuilder: (context, index) =>
              customTextField(textfieldData[index], Icons.title_rounded),
        ));
  }
}

class customTextField extends StatelessWidget {
  String label;
  final IconData icon;

  customTextField(this.label, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
              ),
              labelText: label)),
    );
  }
}
