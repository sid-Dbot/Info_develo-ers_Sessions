import 'package:firstproject/API/API_service.dart';
import 'package:firstproject/models/home_Data.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late Future<homeData> H;
  void initState() {
    // TODO: implement initState
    super.initState();
    H = Api_service(Url: "https://goldmineedu.com/admin/home/all").getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: FutureBuilder(
          future: H,
          builder: (context, snapshot) {
            return ListView.builder(itemBuilder: ((context, index) {
              return Text(snapshot.data![index].name.toString());
            }));
          },
        ),
      ),
    );
  }
}
