import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TheHomePage extends StatefulWidget {
  const TheHomePage({super.key});

  @override
  State<TheHomePage> createState() => _TheHomePageState();
}

class _TheHomePageState extends State<TheHomePage> {
  int _count = 0;

  Future<int> _calculate(int num) async {
    await Future.delayed(Duration(seconds: 2));
    return num * num;
  }

  Stream<int> _stoped() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield _count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _builderFuture(),
          SizedBox(
            height: 20,
          ),
          // _builderStream(),
        ],
      ),
    );
  }

  Widget _builderFuture() {
    return Center(
      child: FutureBuilder(
          future: _calculate(10),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data.toString());
            }
            return CircularProgressIndicator();
          })),
    );
  }

  // Widget _builderStream() {
  //   return Center(
  //     child: StreamBuilder(
  //         stream: _stoped(),
  //         builder: ((context, snapshot) {
  //           return Text(snapshot.data.toString());
  //         })),
  //   );
  // }
}
