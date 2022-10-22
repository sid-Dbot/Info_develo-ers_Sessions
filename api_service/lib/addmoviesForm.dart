import 'package:flutter/material.dart';

class MoviesForm extends StatelessWidget {
  List textfieldData = ['Title', 'Genre', 'Released Year', 'Poster Url'];
  List iconfieldData = [
    Icons.title,
    Icons.category_outlined,
    Icons.date_range,
    Icons.link
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Please enter movie details:',
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    backgroundColor: Colors.lightBlueAccent,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .55,
                child: ListView.builder(
                  itemCount: textfieldData.length,
                  itemBuilder: (context, index) => customTextField(
                      textfieldData[index], iconfieldData[index]),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Submit'))
            ],
          ),
        ));
  }
}

class customTextField extends StatelessWidget {
  String label;
  final IconData icon;

  customTextField(
    this.label,
    this.icon,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 9,
                  color: Colors.blueGrey,
                  offset: Offset(2, 4),
                  spreadRadius: 4)
            ]),
        child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  icon,
                ),
                prefixIconColor: Colors.lightBlueAccent,
                labelText: label)),
      ),
    );
  }
}
