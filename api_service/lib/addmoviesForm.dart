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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                height: MediaQuery.of(context).size.height * .5,
                child: ListView.builder(
                  itemCount: textfieldData.length,
                  itemBuilder: (context, index) => customTextField(
                      textfieldData[index], iconfieldData[index]),
                ),
              ),
            ],
          ),
        ));
  }
}

class customTextField extends StatelessWidget {
  String label;
  final IconData icon;

  customTextField(this.label, this.icon);
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
                blurRadius: 3,
              )
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
