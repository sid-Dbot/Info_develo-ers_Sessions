import 'package:api_service/addmoviesForm.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IconButton(
        alignment: Alignment.center,
        iconSize: 40,
        icon: Icon(Icons.add_circle_sharp),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MoviesForm()));
        },
        splashColor: Colors.amber,
        splashRadius: 30,
        color: Colors.black,
      ),
    );
  }
}
