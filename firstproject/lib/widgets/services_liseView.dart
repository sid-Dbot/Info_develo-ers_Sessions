import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Services"),
          TextButton(
            onPressed: () {},
            child: Text("See all>"),
          )
        ],
      ),
      SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ListTile(
              title: SizedBox.square(
                dimension: 10,
                child: Container(
                  child: Image.network(
                      fit: BoxFit.fill,
                      "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
