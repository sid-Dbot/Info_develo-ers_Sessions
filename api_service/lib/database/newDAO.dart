import 'package:api_service/database/new_model.dart';
import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';

@dao
abstract class NewDAO {
  @Query('SELECT * FROM NewModel')
  Future<List<NewModel>> getAllNew();

  @insert
  Future<void> insertNew(NewModel newModel);

  @delete
  Future<int> deleteNew(NewModel newModel);
}
