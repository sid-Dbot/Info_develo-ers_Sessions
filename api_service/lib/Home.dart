import 'package:api_service/api/getService.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GetService>().getdata();
    final loadedData = Provider.of<GetService>(context).data;
    //print(loadedData);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: loadedData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                loadedData[index].title.toString(),
                style: TextStyle(fontSize: 35),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    loadedData.first.description.toString(),
                    maxLines: 2,
                    style: TextStyle(fontSize: 25, color: Colors.blueGrey),
                  ),
                  Text('...'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
