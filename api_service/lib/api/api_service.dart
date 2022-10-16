// import 'dart:convert';

// import 'package:firstproject/futurebuilder/api_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:http/http.dart';

// class ApiService{

//   Future<List<UserModel>> getData() async{
//     Response response = await get(Uri.parse("https://jsonplaceholder.typicode.com/users%22));
//     if(response.statusCode == 200){
//       print(response.body);
//       final List datas = jsonDecode(response.body);
//       return datas.map((e) => UserModel.fromJson(e)).toList();
//     }
//     else{
//       throw Exception("Failed");
//     }
//   }

// }


// class DatasPages extends StatelessWidget {
//   const DatasPages({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Data"),
//       ),
//       body: FutureBuilder(
//         future: ApiService().getData(),
//         builder: ((context, snapshot) {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context,index){
//                 return ListTile(
//                   title: Text(snapshot.data![index].name.toString()),
//                   subtitle: Text(snapshot.data![index].email.toString()),
//                 );
//             });
//         }),
//       ),
//     );
//   }
// }