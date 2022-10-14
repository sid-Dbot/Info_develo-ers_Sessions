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
    return ListView(
      children: [
        Card(
          elevation: 9,
          child: Text('AbCE'),
        ),
        Card(
          elevation: 9,
          child: Text('AbCE'),
        )
      ],
    );
  }
}
