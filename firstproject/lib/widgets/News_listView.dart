import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('News'),
          TextButton(
            onPressed: () {},
            child: Text('See All>'),
          )
        ],
      ),
      SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.4)),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            fit: BoxFit.fill,
                            "https://thumbs.dreamstime.com/b/education-news-24845353.jpg"),
                      ),
                    ),
                    Text("Book"),
                  ]),
                ),
              ),
            ),
          ))
    ]);
  }
}
