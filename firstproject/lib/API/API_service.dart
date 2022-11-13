import 'dart:convert';

import 'package:firstproject/models/home_Data.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api_service with ChangeNotifier {
  String Url;
  List<homeData> loadedData = [];

  Api_service({required this.Url});

//===========GET METHOD===============
  getData() async {
    var response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      loadedData.addAll(List<homeData>.from(jsonDecode(response.body.toString())
          .map((e) => homeData.fromJson(e))));
      notifyListeners();
    } else {
      throw Exception('no Data');
    }

    // final List Aaa = jsonDecode(response.body);
    // return Aaa.map((e) => Services_data.fromJson(e)).toList();
  }
}
