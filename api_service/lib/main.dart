import 'dart:convert';
import 'dart:math';

import 'package:api_service/Home.dart';
import 'package:api_service/api/getService.dart';
import 'package:api_service/detailsPage.dart';
import 'package:api_service/show_saved.dart';
import 'package:floor/floor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'database/database.dart';
import 'database/newDAO.dart';
import 'database/new_model.dart';
import 'models/movies-model.dart';

void main(List<String> args) => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<NewModel> saved = [];
  late NewDAO dao;
  void _getdata() async {
    final Database =
        await $FloorNewDatabase.databaseBuilder('edmit new.db').build();
    dao = Database.newDAO;
    // final x = dao.getAllNew();
    // saved.addAll(List<NewModel>.from(
    //     jsonDecode(x.toString()).map((e) => NewModel.fromJson(e))));
    // print(saved);
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    _getdata();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GetService>(
          create: (context) => GetService(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            textTheme: TextTheme(
          titleMedium: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.blueGrey),
        )),
        home: HomePage(),
        routes: {
          '/detailsPage': (context) => DetailsPage(
                dao: dao,
              ),
          '/saved': (context) => ShowSaved(
                dao: dao,
              ),
        },
      ),
    );
  }
}
