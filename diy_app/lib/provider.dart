import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import './dataModel.dart';

class Api with ChangeNotifier {
  List<BlogData> blogdata = [];

  Future<void> getData() async {
    var res = await http
        .get(Uri.parse('https://goldmineedu.com/admin/page/blog/data'));
    if (res.statusCode == 200) {
      blogdata = [];

      blogdata.addAll(List<BlogData>.from(
          jsonDecode(res.body.toString()).map((e) => BlogData.fromJson(e))));

      notifyListeners();
    } else {
      throw Exception('Failed to load ');
    }
    notifyListeners();
  }
}
