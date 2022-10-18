import 'package:flutter/material.dart';

class users {
  late final String userName;
  late final String status;

  users(@required this.userName, @required this.status);

  Map<String,dynamic> toJason(){
    return ['UserName'=userName;]
  }
  }
    
}
