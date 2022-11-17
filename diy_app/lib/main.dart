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
    return ChangeNotifierProvider(
        create: (context) {
          return Api();
        },
        child: MaterialApp(home: BlogPage()));
  }
}

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //context.read<Api>().getData();
    final datas = Provider.of<Api>(context).userdata;
    return Scaffold(body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return userPage(name: datas[index].name.toString());
                    },
                  ));
                },
                child: Text(datas[index].email.toString()));
          },
        ););
  }
}


// ListTile(
//               title: Text(value.blogdata[index].title.toString()),
//               trailing: Image.network(
//                   "https://goldmineedu.com/${value.blogdata[index].image}"),
//               subtitle: Html(data: value.blogdata[index].content.toString()),
//             );