import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import 'models/users.dart';

class Api with ChangeNotifier {
  List<Users> userdata = [];

  Future<void> getData() async {
    var res = await http.get(
        Uri.parse('https://mocki.io/v1/ae72f366-6a74-4600-a93a-9b2227d64800'));
    if (res.statusCode == 200) {
      userdata = [];

      userdata.addAll(List<Users>.from(
          jsonDecode(res.body.toString()).map((e) => Users.fromJson(e))));

      notifyListeners();
    } else {
      throw Exception('Failed to load ');
    }
    notifyListeners();
  }
}
