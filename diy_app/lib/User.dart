import 'package:diy_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class userPage extends StatelessWidget {
  // String? name;
  // userPage({required this.name});

  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context)!.settings.arguments;
    final userdetails = Provider.of<Api>(context)
        .userdata
        .firstWhere((Uid) => Uid.id == userId);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text(userdetails.name.toString()),
          Text(userdetails.address.toString())
        ],
      )),
    );
  }
}
