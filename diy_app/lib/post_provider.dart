import 'package:flutter/material.dart';

class postData with ChangeNotifier {

  Future<void>_apply()async{
        var allData= {
          "name" : nameCOntroller.text,
          "job" : jobController.text,
        };

        var res = await OurApi().postData(allData);
        var body = jsonDecode(res.body);
        if(res.statusCode == 201){
        

        }
}
