import 'dart:convert';

import 'package:http/http.dart' as http;

class service {
  sendData(info) async {
    return await http.post(Uri.parse("https://reqres.in/api/users"),
        body: jsonEncode(info),
        headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
        });
    // if (response.statusCode == 200) {
    //   print(response.body);
    //   return response;
    // } else {
    //   throw Exception('Post Failed');
    // }
  }

  // Future<void>_apply()async{
  //       var allData= {
  //         "name" : nameCOntroller.text,
  //         "job" : jobController.text,
  //       };

  //       var res = await OurApi().postData(allData);
  //       var body = jsonDecode(res.body);
  //       if(res.statusCode == 201){

  //       }
}
