import 'package:firstproject/API/API_service.dart';
import 'package:firstproject/home.dart';
import 'package:firstproject/models/home_Data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Home_Page(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   late Future<List<homeData>> H;
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     H = Api_service(Url: "https://goldmineedu.com/admin/home/all").getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           color: Colors.white,
//           child: FutureBuilder(
//             future: H,
//             builder: (context, snapshot) {
//               return ListView.builder(
//                   itemCount: snapshot.data!.length,
//                   itemBuilder: ((context, index) {
//                     return Text(snapshot.data![index].name.toString());
//                   }));
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
