import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:firstproject/models/home_Data.dart';

class Api_service {
  String Url;
  Api_service({required this.Url});

//===========GET METHOD===============
  Future<homeData> getData() async {
    var response = await http.get(Uri.parse(Url));
    print(response.body);
    return homeData.fromJson(jsonDecode(response.body));
  }
}
