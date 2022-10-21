// //FUTURE AND STREAM DEMO//

// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/container.dart';
// // import 'package:flutter/src/widgets/framework.dart';

// // void main(List<String> args) {
// //   runApp(Builderz());
// // }

// // class Builderz extends StatefulWidget {
// //   @override
// //   State<Builderz> createState() => _BuilderzState();
// // }

// // class _BuilderzState extends State<Builderz> {
// //   Future<int> _calc(int num) async {
// //     await Future.delayed(Duration(seconds: 2));
// //     return num + 10;
// //   }

// //   Stream<int> _stream(int num) async* {
// //     while (true) {
// //       await Future.delayed(Duration(seconds: 2));
// //       yield num++;
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //           body: Column(children: [
// //         Center(
// //           child: FutureBuilder(
// //               future: _calc(39),
// //               builder: (context, snapshot) {
// //                 return Text(snapshot.data.toString());
// //               }),
// //         ),
// //         Center(
// //           child: StreamBuilder(
// //             stream: _stream(20),
// //             builder: (context, snapshot) => Text(snapshot.data.toString()),
// //           ),
// //         )
// //       ])),
// //     );
// //   }
// // }


// // class ApiService {
// //   Future<List<MoviesList>> getData() async {
// //     Response response = await get(
// //         Uri.parse("https://mocki.io/v1/0653266b-eca0-46cd-835e-b0d3aabec459"));
// //     if (response.statusCode == 200) {
// //       print(response.body);
// //       final List datas = jsonDecode(
// //         response.body,
// //       );
// //       return datas.map((e) => MoviesList.fromJson(e)).toList();
// //     } else {
// //       throw Exception("Failed");
// //     }
// //   }
// // }


// FutureBuilder(
//         future: ApiService().getData(),
//         builder: ((context, snapshot) {
//           return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                         borderRadius: BorderRadius.circular(9),
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 5,
//                             blurStyle: BlurStyle.outer,
//                             color: Colors.black,
//                           )
//                         ]),
//                     child: Card(
//                       elevation: 7,
//                       child: ListTile(
//                         leading: Text(
//                           snapshot.data![index].id.toString(),
//                           style: TextStyle(fontSize: 30),
//                         ),
//                         title: Image.network(
//                           snapshot.data![index].imgURL.toString(),
//                           width: 150,
//                           height: 150,
//                           fit: BoxFit.fill,
//                         ),
//                         // Text(snapshot.data![index].name.toString()),
//                         // subtitle: Column(
//                         //   crossAxisAlignment: CrossAxisAlignment.start,
//                         //   children: [
//                         //     Text(snapshot.data![index].genre.toString()),
//                         //     Text(snapshot.data![index].released.toString()),
//                         //   ],
//                         // ),
//                         trailing: Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Text(
//                               snapshot.data![index].name.toString(),
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w700,
//                                   decoration: TextDecoration.underline),
//                             ),
//                             Text(snapshot.data![index].genre.toString()),
//                             Text(snapshot.data![index].released.toString()),
//                           ],
//                         ),
//                       ),
//                     ));
//               });
//         }),
//       ),