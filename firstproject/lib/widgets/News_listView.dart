import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('News'),
          TextButton(
            onPressed: () {},
            child: Text('See All>'),
          )
        ],
      ),
    );
  }
}
