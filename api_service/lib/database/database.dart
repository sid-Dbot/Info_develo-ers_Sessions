import 'dart:async';

import 'package:api_service/database/newDAO.dart';
import 'package:api_service/database/new_model.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [NewModel])
abstract class NewDatabase extends FloorDatabase {
  NewDAO get newDAO;
}
