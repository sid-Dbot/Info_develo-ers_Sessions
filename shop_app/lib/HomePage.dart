import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            color: Colors.grey[800],
          ),
          Positioned(
              top: size.height * 0.07,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shop',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: size.height * 0.09,
                      //margin: EdgeInsets.all(8),
                      width: size.width,
                      child: Card(
                          child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            label: Text('Search All..'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            )),
                      )),
                    ),
                  ],
                ),
              )),
          Positioned(
            top: size.height * 0.24,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Center(child: OutlinedButton(onPressed: (){}, child: Text('Categories'),),)),
            ),
          )
        ],
      ),
    );
  }
}
