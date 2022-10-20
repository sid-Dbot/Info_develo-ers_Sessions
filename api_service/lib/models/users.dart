import 'package:flutter/material.dart';

class MoviesList {
  int? id;
  String? name;
  String? genre;
  int? released;
  String? imgURL;

  MoviesList({this.id, this.name, this.genre, this.released, this.imgURL});

  MoviesList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    genre = json['genre'];
    released = json['released'];
    imgURL = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['genre'] = this.genre;
    data['released'] = this.released;
    data['img'] = this.imgURL;
    return data;
  }
}
