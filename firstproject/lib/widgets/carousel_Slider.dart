import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({super.key});

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  int index = 5;
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: index,
          options: CarouselOptions(
            enableInfiniteScroll: false,
            viewportFraction: 1,
            onPageChanged: (index, _) {
              pageindex = index;
              setState(() {});
            },
            autoPlay: true,
            height: MediaQuery.of(context).size.height * 0.27,
          ),
          itemBuilder: (context, index, realindex) => Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.grey,
                  offset: Offset(2, 1),
                )
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                child: Image.network(
                  fit: BoxFit.fill,
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrceo--QeW1CZHYUSfdy4q6BNRvT9np6x0BQ&usqp=CAU",
                ),
              ),
            ),
          ),
        ),
        Center(
          child: CarouselIndicator(
            height: 5,
            width: 5,
            activeColor: Colors.grey,
            color: Colors.black,
            count: index,
            index: pageindex,
          ),
        ),
      ],
    );
  }
}
