import 'package:flutter/material.dart';

class Categories_types extends StatelessWidget {
  List list = [
    'All',
    'collections',
    'Occasions',
    'Home Decor',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 9,
          child: Text(list[index]),
        );
      },
      itemCount: 4,
    );
  }
}
