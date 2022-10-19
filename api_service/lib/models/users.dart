import 'package:flutter/material.dart';

class users {
  int? id;
  String? name;
  String? username;
  String? email;
  String? status;
  users(this.id, this.name, this.username, this.email, this.status);

  users.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        email = json['email'],
        status = json['status'];

  Map<String, dynamic> tojson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['status'] = this.status;
    return data;
  }
}
