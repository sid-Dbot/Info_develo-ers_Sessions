import 'dart:convert';

import 'package:api_service/api/getService.dart';
import 'package:api_service/database/database.dart';
import 'package:api_service/database/newDAO.dart';
import 'package:api_service/database/new_model.dart';
import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class DetailsPage extends StatefulWidget {
  NewDAO dao;

  DetailsPage({required this.dao});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // getCount() async {

  //   final int? count = await widget.dao.getCount();

  //   print(count);
  // }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as int;
    final selected = Provider.of<GetService>(context).findbyId(id);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final int? count = prefs.getInt('count');
                print(count);
                NewModel model = NewModel(id: count, all: jsonEncode(selected));
                widget.dao.insertNew(model);
              },
              icon: Icon(Icons.save))
        ],
        title: Text(selected.title.toString()),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Text(
            selected.description.toString(),
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
