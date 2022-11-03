import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
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
        Expanded(
          child: SizedBox(
            height: 150,
            child: Flexible(
              child: Row(
                children: [
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Column(children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            fit: BoxFit.fill,
                            "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                      ),
                      Text("Book"),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
