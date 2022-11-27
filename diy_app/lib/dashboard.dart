import 'package:diy_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final logout = Provider.of<Api>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
          child: TextButton(
        child: const Text('Logout'),
        onPressed: () {
          logout.logout();
          Navigator.pop(context);
        },
      )),
    );
  }
}
