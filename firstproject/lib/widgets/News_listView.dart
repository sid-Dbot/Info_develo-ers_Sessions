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
    print('debug');
    _loadData =
        Api_service().getData('https://goldmineedu.com/admin/page/blog/data');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'News',
            style: TextStyle(color: Colors.deepOrange),
          ),
          TextButton(
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(Colors.deepOrangeAccent)),
            onPressed: () {},
            child: const Text('See All>'),
          )
        ],
      ),
      FutureBuilder(
          future: _loadData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                //physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.4)),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.network(
                              fit: BoxFit.fill,
                              'https://goldmineedu.com/${snapshot.data![index].image.toString()}'),
                        ),
                      ),
                      Text(snapshot.data![index].title.toString()),
                    ]),
                  ),
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          })
    ]);
  }
}
