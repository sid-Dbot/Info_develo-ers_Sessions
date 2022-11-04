import 'package:firstproject/API/API_service.dart';
import 'package:firstproject/models/services_data.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  late Future<List<Services_data>> loadData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData = Api_service(Url: 'https://goldmineedu.com/admin/page/my-service')
        .getData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Services",
                style: TextStyle(color: Colors.deepOrange),
              ),
              TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Colors.deepOrange)),
                onPressed: () {},
                child: const Text("See all>"),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .23,
            child: FutureBuilder<List<Services_data>>(
              future: loadData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.network(
                              fit: BoxFit.fill,
                              'https://goldmineedu.com/${snapshot.data![index].image.toString()}',
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              snapshot.data![index].title.toString(),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ]);
  }
}
