import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
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
          SizedBox(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 100,
                width: 100,
                child: ListTile(
                  title: Container(
                    color: Colors.redAccent,
                  ),
                  subtitle: Text('Zzzzz'),
                ),
              ),
              itemCount: 4,
            ),
          ),
        ]),
      ),
    );
  }
}
