import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Featured extends StatelessWidget {
  const Featured({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
        itemBuilder: (context, index) => Container(
              height: 200,
              width: 500,
              padding: EdgeInsets.all(7),
              child: Text('$index'),
            ));
  }
}
