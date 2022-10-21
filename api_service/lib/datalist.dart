import 'package:flutter/material.dart';

import 'api/api_service.dart';

class DataItems extends StatelessWidget {
  const DataItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies List"),
      ),
      body: FutureBuilder(
        future: Apiservice().getData(),
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Text(snapshot.data![index].id.toString()),
                  title: Container(
                    height: 150,
                    width: 150,
                    child:
                        Image.network(snapshot.data![index].imgURL.toString()),
                  ),
                  trailing: Column(children: [
                    Text(snapshot.data![index].name.toString()),
                    Text(snapshot.data![index].genre.toString()),
                    Text(snapshot.data![index].released.toString())
                  ]),
                );
              }));
        },
      ),
    );
  }
}
