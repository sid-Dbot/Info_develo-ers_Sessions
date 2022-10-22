import 'package:flutter/material.dart';

class MoviesForm extends StatelessWidget {
  const MoviesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Center(
          child: Text(
            'Please enter movie details:',
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              backgroundColor: Colors.lightBlueAccent,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ),
        Container(
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
            Icons.title,
          ))),
        )
      ]),
    );
  }
}
