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
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: Text(snapshot.data![index].id.toString()),
                    title: Container(
                      height: 150,
                      width: 150,
                      child: Image.network(
                        snapshot.data![index].imgURL.toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                    trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(snapshot.data![index].name.toString()),
                          Text(snapshot.data![index].genre.toString()),
                          Text(snapshot.data![index].released.toString())
                        ]),
                  ),
                );
              }));
        },
      ),
      floatingActionButton: IconButton(
        iconSize: 50,
        icon: Icon(Icons.add_box_rounded),
        onPressed: () {},
        splashColor: Colors.amber,
        color: Colors.lightBlue,
      ),
    );
  }
}
