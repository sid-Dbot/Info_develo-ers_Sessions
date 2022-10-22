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
              backgroundColor: Colors.lightBlueAccent,
            ),
          ),
        ),
        Container(
          child: TextField(decoration: InputDecoration()),
        )
      ]),
    );
  }
}
