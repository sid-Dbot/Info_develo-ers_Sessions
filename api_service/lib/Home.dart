import 'package:api_service/api/getService.dart';
import 'package:api_service/database/database.dart';
import 'package:api_service/database/newDAO.dart';
import 'package:floor/floor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void getcount() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('count', count++);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GetService>().getdata();
  }

  @override
  Widget build(BuildContext context) {
    // final loadedData = Provider.of<GetService>(context).data;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/saved');
              },
              icon: Icon(Icons.bookmark))
        ],
        title: const Text('Home'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Consumer<GetService>(
          builder: (context, value, child) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: value.data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (() {
                    getcount();
                    Navigator.of(context).pushNamed('/detailsPage',
                        arguments: value.data[index].id);
                  }),
                  child: Container(
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(9)),
                    child: ListTile(
                      title: Text(
                        value.data[index].title.toString(),
                        style: TextStyle(fontSize: 35),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            value.data[index].description.toString(),
                            maxLines: 2,
                            style:
                                TextStyle(fontSize: 25, color: Colors.blueGrey),
                          ),
                          Text('...'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
