import 'dart:convert';

import 'package:api_service/models/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'dart:html';

import 'package:http/testing.dart';

class _Apiservice {
  String url = "https://mocki.io/v1/0653266b-eca0-46cd-835e-b0d3aabec459";
  Future<List<MoviesList>> getData() async {
    Response response = await get(Uri.parse(url));
    final List Aaa = jsonDecode(response.body);
    return Aaa.map((e) => MoviesList.fromJson(e)).toList();
  }
}
