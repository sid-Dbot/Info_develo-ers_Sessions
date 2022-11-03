import 'dart:convert';

import 'package:firstproject/models/services_data.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:firstproject/models/home_Data.dart';

class Api_service {
  String Url;

  Api_service({required this.Url});

//===========GET METHOD===============
  Future<List<Services_data>> getData() async {
    http.Response response = await http.get(Uri.parse(Url));
    print(response.body);
    final List Aaa = jsonDecode(response.body);
    return Aaa.map((e) => Services_data.fromJson(e)).toList();
  }
}
