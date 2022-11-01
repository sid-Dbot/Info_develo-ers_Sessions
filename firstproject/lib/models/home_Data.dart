import 'package:flutter/material.dart';

class homeData {
  int? id;
  String? name;
  String? image;
  String? country;
  String? createdAt;
  String? updatedAt;

  homeData(
      {this.id,
      this.name,
      this.image,
      this.country,
      this.createdAt,
      this.updatedAt});

  homeData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    country = json['country'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['country'] = this.country;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
