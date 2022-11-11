import 'API.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Api>(
          create: (context) => Api(),
        )
      ],
      child: MaterialApp(home: BlogPage()),
    );
  }
}

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<Api>().getData;
    return Scaffold(
      body: Consumer<Api>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.blogdata.length,
            itemBuilder: (context, index) {
              return Text(value.blogdata[index].title.toString());
            },
          );
        },
      ),
    );
  }
}
