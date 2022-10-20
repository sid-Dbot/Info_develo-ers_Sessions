import 'dart:convert';

import 'package:api_service/models/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiService {
  Future<List<MoviesList>> getData() async {
    Response response = await get(
        Uri.parse("https://mocki.io/v1/07d800c4-2a10-4c67-a012-adce556c18ca"));
    if (response.statusCode == 200) {
      print(response.body);
      final List datas = jsonDecode(response.body);
      return datas.map((e) => MoviesList.fromJson(e)).toList();
    } else {
      throw Exception("Failed");
    }
  }
}

class DatasPages extends StatelessWidget {
  const DatasPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies List"),
      ),
      body: FutureBuilder(
        future: ApiService().getData(),
        builder: ((context, snapshot) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          blurStyle: BlurStyle.outer,
                          color: Colors.black,
                        )
                      ]),
                  child: Card(
                    elevation: 7,
                    child: ListTile(
                      leading: Text(
                        snapshot.data![index].id.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                      title: Text(snapshot.data![index].name.toString()),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(snapshot.data![index].genre.toString()),
                          Text(snapshot.data![index].released.toString()),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }
}
