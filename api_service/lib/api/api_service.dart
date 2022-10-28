import 'dart:convert';

import 'package:api_service/models/users.dart';

import 'package:http/http.dart' as http;

class Apiservice {
  String url = "https://mocki.io/v1/0653266b-eca0-46cd-835e-b0d3aabec459";
  Future<List<MoviesList>> getData() async {
    http.Response response = await http.get(Uri.parse(url));
    final List Aaa = jsonDecode(response.body);
    return Aaa.map((e) => MoviesList.fromJson(e)).toList();
  }

  postData(data) async {
    return await http.post(
      Uri.parse(url),
      body: jsonEncode(<String, String>{
        'title': 'title',
      }),
    );
  }
}
