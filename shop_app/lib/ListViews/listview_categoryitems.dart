import 'package:flutter/material.dart';

class Category_item extends StatelessWidget {
  const Category_item({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return Container(
          height: 300,
          color: Colors.deepPurpleAccent,
          child: Text('$index'),
        );
      }),
      itemCount: 5,
    );
  }
}
