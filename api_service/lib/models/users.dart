import 'package:flutter/material.dart';

class users {
  final String userName;
  final String status;

  users(this.userName, this.status);

  users.fromJson(Map<String, dynamic> json)
      : userName = json['userName'],
        status = json['status'];

  Map<String, dynamic> tojson() => {
        'userName': userName,
        'status': status,
      };
}
