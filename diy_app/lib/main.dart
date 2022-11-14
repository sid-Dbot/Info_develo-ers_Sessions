import 'package:diy_app/User.dart';
import 'package:diy_app/provider.dart';
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
    context.read<Api>().getData();
    return Scaffold(body: Consumer<Api>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.userdata.length,
          itemBuilder: (context, index) {
            return TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return userPage(
                          name: value.userdata[index].name.toString());
                    },
                  ));
                },
                child: Text(value.userdata[index].email.toString()));
          },
        );
      },
    ));
  }
}


// ListTile(
//               title: Text(value.blogdata[index].title.toString()),
//               trailing: Image.network(
//                   "https://goldmineedu.com/${value.blogdata[index].image}"),
//               subtitle: Html(data: value.blogdata[index].content.toString()),
//             );