import 'dart:convert';

import 'package:api_service/database/newDAO.dart';
import 'package:api_service/database/new_model.dart';
import 'package:api_service/models/movies-model.dart';
import 'package:flutter/material.dart';

class ShowSaved extends StatefulWidget {
  NewDAO dao;
  ShowSaved({required this.dao});

  @override
  State<ShowSaved> createState() => _ShowSavedState();
}

class _ShowSavedState extends State<ShowSaved> {
  var savedData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saved')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: FutureBuilder<List<NewModel>>(
            future: widget.dao.getAllNew(),
            builder: (context, snapshot) {
              //var newdata = snapshot.data;

              return snapshot.hasData
                  ? ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        savedData =
                            jsonDecode(snapshot.data![index].all.toString());
                        var Z = Movies.fromJson(savedData);

                        return Column(children: [
                          ListTile(
                            leading: Text((index + 1).toString()),
                            title: Text(Z.title.toString()),
                            trailing: IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  NewModel todelete = NewModel(
                                      id: snapshot.data![index].id,
                                      all: Z.toString());
                                  widget.dao.deleteNew(todelete);
                                  setState(() {});
                                }),
                          ),
                          //Text('desss'),
                        ]);
                      },
                    )
                  : Center(
                      child: Text('No data Saved'),
                    );
            }),
      ),
    );
  }
}
