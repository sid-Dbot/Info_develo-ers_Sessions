import 'package:flutter/material.dart';

import 'api/api_service.dart';

class DataItems extends StatelessWidget {
  const DataItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movies List"),),
      body: FutureBuilder(
        future: Apiservice().getData(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: ((context, index) {
              

            

          }));
        
      },),
    )
  }
}
