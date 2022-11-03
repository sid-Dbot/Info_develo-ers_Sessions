import 'package:firstproject/API/API_service.dart';
import 'package:firstproject/models/services_data.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  late Future<List<Services_data>> _loadData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadData = Api_service(Url: 'https://goldmineedu.com/admin/page/blog/data')
        .getData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'News',
            style: TextStyle(color: Colors.deepOrange),
          ),
          TextButton(
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent)),
            onPressed: () {},
            child: Text('See All>'),
          )
        ],
      ),
      SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: Container(
            child: FutureBuilder(
              future: _loadData,
              builder: (context, snapshot) => ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.4)),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.network(
                              fit: BoxFit.fill,
                              snapshot.data![index].image.toString()),
                        ),
                      ),
                      Text("Latest News..."),
                    ]),
                  ),
                ),
              ),
            ),
          ))
    ]);
  }
}
