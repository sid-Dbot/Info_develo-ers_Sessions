import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/movies-model.dart';
import 'package:provider/provider.dart';

class GetService with ChangeNotifier {
  List<Movies> _data = [];
  List<Movies> get data {
    return [..._data];
  }

  Future<void> getdata() async {
    var response = await http.get(
        Uri.parse('https://mocki.io/v1/0b6f721e-74bd-4084-a821-4c08c2d53455'));
    notifyListeners();
    if (response.statusCode == 200) {
      _data = [];

      _data.addAll(List<Movies>.from(
          jsonDecode(response.body).map((e) => Movies.fromJson(e))));
      notifyListeners();
    } else {
      throw Exception('No Data');
    }
    notifyListeners();
  }
}
