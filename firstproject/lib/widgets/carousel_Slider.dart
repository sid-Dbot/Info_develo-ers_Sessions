import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../API/API_service.dart';

class Carousel_Slider extends StatelessWidget {
  const Carousel_Slider({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<Api_service>().getData;
    return Scaffold(body: Consumer(builder: (context, value, child) {
      return ListView.builder(
        itemCount: value.loadedData.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(11)),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                fit: BoxFit.fill,
                "https://goldmineedu.com/${loaddata[index].toString()}",
              ),
            ),
          );
        },
      );
    }));
  }
}
   

// class Carousel_Slider extends StatefulWidget {
//   const Carousel_Slider({super.key});

//   @override
//   State<Carousel_Slider> createState() => _Carousel_SliderState();
// }

// class _Carousel_SliderState extends State<Carousel_Slider> {
//   // late Future<List<Services_data>> _loadData;

//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   _loadData =
//   //       Api_service(Url: ).getData();
//   // }

//   int index = 5;
//   int pageindex = 0;

//   @override
//   Widget build(BuildContext context) {
//     // final loadData = Provider.of<Api_service>(context)
//     //     .getData("https://goldmineedu.com/admin/home/all");
// context.read<Api_service>().getData;
//     return 
//       //   children: [
//       //     CarouselSlider.builder(
//       //       itemCount: ,         options: CarouselOptions(
//       //         enableInfiniteScroll: false,
//       //         viewportFraction: 1,
//       //         onPageChanged: (index, _) {
//       //           pageindex = index;
//       //           setState(() {});
//       //         },
//       //         autoPlay: true,
//       //         height: MediaQuery.of(context).size.height * 0.3,
//       //       ),
//       //       itemBuilder: (context, index, realindex) => Padding(
//       //         padding: const EdgeInsets.all(3.0),
//       //         child: Container(
//       //           decoration: const BoxDecoration(boxShadow: [
//       //             BoxShadow(
//       //               blurRadius: 11,
//       //               color: Colors.grey,
//       //               offset: Offset(2, 1),
//       //             )
//       //           ]),
//       //           child: ClipRRect(
//       //             borderRadius: const BorderRadius.all(Radius.circular(11)),
//       //             child: Image.network(
//       //               fit: BoxFit.fill,
//       //               "https://goldmineedu.com/${loadData.image.toString()}",
//       //             ),
//       //           ),
//       //         ),
//       //       ),
//       //     )
//           // FutureBuilder(
//           //     future: loadData,
//           //     builder: (context, snapshot) => snapshot.hasData
//           //         ?
//           //         : const CircularProgressIndicator()),
//           // Center(
//           //   child: CarouselIndicator(
//           //     height: 5,
//           //     width: 5,
//           //     activeColor: Colors.grey,
//           //     color: Colors.black,
//           //     count: index,
//           //     index: pageindex,
//           //   ),
//           // ),
//         ],
//       ),
//     },
//       child: 
//     );
//   }
// }
