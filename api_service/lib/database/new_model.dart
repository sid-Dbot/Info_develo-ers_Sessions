import 'package:floor/floor.dart';

@entity
class NewModel {
  @primaryKey
  int? id;
  String? all;
  NewModel({required this.id, required this.all});

  NewModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    all = json['all'];
  }
}
