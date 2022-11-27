import 'package:api_service/Home.dart';
import 'package:api_service/api/getService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GetService>(
          create: (context) => GetService(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            textTheme: TextTheme(
          titleMedium: TextStyle(color: Colors.white),
        )),
        home: HomePage(),
      ),
    );
  }
}
