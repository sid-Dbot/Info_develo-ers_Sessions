import 'package:firstproject/API/API_service.dart';
import 'package:firstproject/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Api_service>(
          create: (context) => Api_service(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(),
        home: Home_Page(),
      ),
    );
  }
}
