import 'package:flutter/material.dart';

class MoviesList {
  int? id;
  String? name;
  String? genre;

  MoviesList({this.id, this.name, this.genre});

  MoviesList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    genre = json['genre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['genre'] = this.genre;
    return data;
  }
}
