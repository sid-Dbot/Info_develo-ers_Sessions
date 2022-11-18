import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import 'models/users.dart';
import './post_service.dart';

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

  Future postData(String title, String job) async {
    var data = {
      'title': title,
      'job': job,
    };

    var response = await service().sendData(data);
    var body = jsonDecode(response.body);
    notifyListeners();
    if (response.statusCode == 201) {
      print(body);
    } else {
      throw Exception('Post Failed');
    }
  }
}
