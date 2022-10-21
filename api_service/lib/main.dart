import 'package:api_service/api/api_service.dart';
import 'package:api_service/datalist.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DataItems(),
      ),
    );
  }
}
