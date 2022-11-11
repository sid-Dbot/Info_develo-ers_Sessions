import 'package:demo_app/ApiService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Api>(
          create: (context) => Api(),
        )
      ],
      child:  MaterialApp(home:BlogPage() ),
    );
  }
}

class BlogPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    context.read<Api>().getData;
    return Scaffold(
        body: Consumer(builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.,
            itemBuilder: (context, index) {
            
            return Text(value);
          },)
        },),
      ),
  }
}











// import 'package:demo_app/ApiService.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:provider/provider.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<ApiServie>(
//           create: (context) {
//             return ApiServie();
//           },
//         )
//       ],
//       child: const MaterialApp(
//         home: Providerspratice(),
//       ),
//     );
//   }
// }

// class Providerspratice extends StatelessWidget {
//   const Providerspratice({super.key});

//   @override
//   Widget build(BuildContext context) {
//     context.read<ApiServie>().getdata();
//     return Scaffold(
//       body: Consumer<ApiServie>(
//         builder: (context, value, child) {
//           return (value.blogdata.isEmpty)
//               ? const CircularProgressIndicator()
//               : ListView.builder(
//                   itemCount: value.blogdata.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         Text(
//                           value.blogdata[index].title ?? 'No Data',
//                           style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 25,
//                               fontStyle: FontStyle.italic),
//                         ),
//                         Html(
//                           data: value.blogdata[index].content ?? 'Null',
//                         ),
//                       ],
//                     );
//                   },
//                 );
//         },
//       ),
//     );
//   }
// }
