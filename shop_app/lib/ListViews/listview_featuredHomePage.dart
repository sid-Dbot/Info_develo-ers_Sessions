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
              height: size.height * 0.2,
              width: size.width * 0.9,
              padding: EdgeInsets.all(7),
            ));
  }
}
