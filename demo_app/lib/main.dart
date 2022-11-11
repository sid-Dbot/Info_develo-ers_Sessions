import 'package:demo_app/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Providerspratice(),
    );
  }
}

class Providerspratice extends StatelessWidget {
  const Providerspratice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('hello'),
    );
  }
}
