// import 'dart:convert';

// import 'package:demo_app/model/dataModel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;

// class ApiServie with ChangeNotifier {
//   List<BlogData> blogdata = [];

//   getdata() async {
//     var res = await http
//         .get(Uri.parse('https://goldmineedu.com/admin/page/blog/data'));
//     if (res.statusCode == 200) {
//       blogdata = [];
//       blogdata.addAll(List<BlogData>.from(
//           jsonDecode(res.body.toString()).map((e) => BlogData.fromJson(e))));
//       notifyListeners();
//     } else {
//       print('error');
//       notifyListeners();
//     }
//     notifyListeners();
//   }
// }
