import 'package:floor/floor.dart';

@entity
class NewModel {
  @primaryKey
  final int id;
  final String all;
  NewModel({required this.id, required this.all});
}
