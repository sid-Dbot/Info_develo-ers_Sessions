import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Services"),
          TextButton(
            onPressed: () {},
            child: Text("See all>"),
          )
        ],
      ),
    );
  }
}


//  ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) => Container(
//                   height: 100,
//                   width: 100,
//                   child: ListTile(
//                     title: Container(
//                       color: Colors.redAccent,
//                     ),
//                     subtitle: Text('Zzzzz'),
//                   ),
//                 ),
//                 itemCount: 4,
//               ),