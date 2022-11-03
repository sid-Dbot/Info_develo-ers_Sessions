import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Services",
                style: TextStyle(color: Colors.deepOrange),
              ),
              TextButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () {},
                child: Text("See all>"),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .23,
            child: Container(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                    ),
                  ),
                  Text("Book"),
                ]),
              ),
            )),
          ),
        ]);
  }
}
