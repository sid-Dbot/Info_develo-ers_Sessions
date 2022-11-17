import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import 'models/users.dart';

class Api with ChangeNotifier {
  List<Users> _userdata = [];
  List<Users> get userdata {
    return [..._userdata];
  }

  Future<void> getData() async {
    var res = await http.get(
        Uri.parse('https://mocki.io/v1/5cf947a0-45ca-4e87-9a8e-8df174c6f88f'));
    if (res.statusCode == 200) {
      _userdata = [];

      _userdata.addAll(List<Users>.from(
          jsonDecode(res.body.toString()).map((e) => Users.fromJson(e))));

      notifyListeners();
    } else {
      throw Exception('Failed to load ');
    }
    notifyListeners();
  }

  postdata(info) async {
    return await http.post(Uri.parse("https://reqres.in/api/users"),
        body: jsonEncode(info),
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
        });
  }
}
