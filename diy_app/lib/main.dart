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
        child: MaterialApp(
          home: BlogPage(),
          routes: {
            'details': (context) => userPage(),
          },
        ));
  }
}

class BlogPage extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController job = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //context.read<Api>().getData();
    Provider.of<Api>(context).getData();
    final datas = Provider.of<Api>(context).userdata;

    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 9,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: datas.length,
              itemBuilder: (context, index) {
                return TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          arguments: datas[index].id, context, 'details');
                    },
                    child: Text(datas[index].email.toString()));
              },
            ),
          ),
          const Center(
            child: Text(
              'Enter New Details:',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const TextField(
              controller: name,
              decoration: InputDecoration(
                  label: Text('Name'),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(9))))),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.send)),
    );
  }
}


// ListTile(
//               title: Text(value.blogdata[index].title.toString()),
//               trailing: Image.network(
//                   "https://goldmineedu.com/${value.blogdata[index].image}"),
//               subtitle: Html(data: value.blogdata[index].content.toString()),
//             );