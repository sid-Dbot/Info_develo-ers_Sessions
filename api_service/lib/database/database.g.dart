// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorNewDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$NewDatabaseBuilder databaseBuilder(String name) =>
      _$NewDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$NewDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$NewDatabaseBuilder(null);
}

class _$NewDatabaseBuilder {
  _$NewDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$NewDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$NewDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<NewDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$NewDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$NewDatabase extends NewDatabase {
  _$NewDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  NewDAO? _newDAOInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `NewModel` (`id` INTEGER, `all` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  NewDAO get newDAO {
    return _newDAOInstance ??= _$NewDAO(database, changeListener);
  }
}

class _$NewDAO extends NewDAO {
  _$NewDAO(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _newModelInsertionAdapter = InsertionAdapter(
            database,
            'NewModel',
            (NewModel item) =>
                <String, Object?>{'id': item.id, 'all': item.all}),
        _newModelDeletionAdapter = DeletionAdapter(
            database,
            'NewModel',
            ['id'],
            (NewModel item) =>
                <String, Object?>{'id': item.id, 'all': item.all});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<NewModel> _newModelInsertionAdapter;

  final DeletionAdapter<NewModel> _newModelDeletionAdapter;

  @override
  Future<List<NewModel>> getAllNew() async {
    return _queryAdapter.queryList('SELECT * FROM NewModel',
        mapper: (Map<String, Object?> row) =>
            NewModel(id: row['id'] as int?, all: row['all'] as String));
  }

  @override
  Future<int?> getCount() async {
    var x = await _queryAdapter.queryNoReturn('SELECT COUNT(*) FROM NewModel');
    return x as int;
  }

  @override
  Future<void> insertNew(NewModel newModel) async {
    await _newModelInsertionAdapter.insert(newModel, OnConflictStrategy.abort);
  }

  @override
  Future<int> deleteNew(NewModel newModel) {
    return _newModelDeletionAdapter.deleteAndReturnChangedRows(newModel);
  }
}
