import 'package:flutter/material.dart';

class Category_item extends StatelessWidget {
  const Category_item({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.deepPurpleAccent,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(2, 2),
              )
            ],
          ),
          child: Text('$index'),
        );
      }),
      itemCount: 5,
    );
  }
}
