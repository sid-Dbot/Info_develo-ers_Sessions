import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

import '../API/API_service.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({super.key});

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  // late Future<List<Services_data>> _loadData;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _loadData =
  //       Api_service(Url: ).getData();
  // }

  int index = 5;
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    final loadData = Provider.of<Api_service>(context)
        .getData("https://goldmineedu.com/admin/home/all");
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: loadData.length,
          options: CarouselOptions(
            enableInfiniteScroll: false,
            viewportFraction: 1,
            onPageChanged: (index, _) {
              pageindex = index;
              setState(() {});
            },
            autoPlay: true,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          itemBuilder: (context, index, realindex) => Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.grey,
                  offset: Offset(2, 1),
                )
              ]),
              child: ChangeNotifierProvider(
                create: (context) => loadData[index],
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  child: Image.network(
                    fit: BoxFit.fill,
                    "https://goldmineedu.com/${loadData.image.toString()}",
                  ),
                ),
              ),
            ),
          ),
        )
        // FutureBuilder(
        //     future: loadData,
        //     builder: (context, snapshot) => snapshot.hasData
        //         ?
        //         : const CircularProgressIndicator()),
        // Center(
        //   child: CarouselIndicator(
        //     height: 5,
        //     width: 5,
        //     activeColor: Colors.grey,
        //     color: Colors.black,
        //     count: index,
        //     index: pageindex,
        //   ),
        // ),
      ],
    );
  }
}
