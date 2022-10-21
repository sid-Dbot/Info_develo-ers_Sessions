import 'dart:convert';

import 'package:api_service/models/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiService {
  String url = "https://mocki.io/v1/0653266b-eca0-46cd-835e-b0d3aabec459";

  Future<List<MoviesList>> getData() async {
    //await Future.delayed(Duration(seconds: 1));

    Response response = await get(Uri.parse(url));
    if (response == null) {
      throw Exception("Server down");
    } else {
      final List Aaa = jsonDecode(response.body);
      return Aaa.map((_) => MoviesList.fromJson(_)).toList();
    }
  }
}

class DatasPages extends StatelessWidget {
  const DatasPages({super.key});
  Stream<List<MoviesList>> getdata() async* {
    Response response = await get(
        Uri.parse("https://mocki.io/v1/0653266b-eca0-46cd-835e-b0d3aabec459"));
    final List bbb = jsonDecode(response.body);

    while (response != null) {
      yield bbb.map((e) => MoviesList.fromJson(e)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Movies List"),
        ),
        body: StreamBuilder(
          stream: getdata(),
          builder: (context, snapshot) {
            return Card(elevation: 8, child: Text(snapshot.data.toString()));
          },
        ));
  }
}
