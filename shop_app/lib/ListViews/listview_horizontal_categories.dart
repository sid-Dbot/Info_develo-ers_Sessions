import 'package:flutter/material.dart';

class Categories_types extends StatefulWidget {
  @override
  State<Categories_types> createState() => _Categories_typesState();
}

class _Categories_typesState extends State<Categories_types> {
  List list = [
    'All',
    'collections',
    'Occasions',
    'Home Decor',
  ];

  bool click = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(9),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (() {
            setState(() {
              click = !click;
            });
          }),
          child: Container(
            child: Card(
              elevation: 9,
              color: click ? Colors.amber : Colors.white,
              child: Text(list[index]),
            ),
          ),
        );
      },
      itemCount: list.length,
    );
  }
}
