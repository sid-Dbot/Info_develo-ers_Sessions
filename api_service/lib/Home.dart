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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))],
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
            return GestureDetector(
              onTap: (() {
                Navigator.of(context)
                    .pushNamed('/detailsPage', arguments: loadedData[index].id);
              }),
              child: Container(
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(9)),
                child: ListTile(
                  title: Text(
                    loadedData[index].title.toString(),
                    style: TextStyle(fontSize: 35),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        loadedData[index].description.toString(),
                        maxLines: 2,
                        style: TextStyle(fontSize: 25, color: Colors.blueGrey),
                      ),
                      Text('...'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
