import 'package:flutter/material.dart';

class MoviesForm extends StatelessWidget {
  List textfieldData = ['Title', 'Genre', 'Released Year', 'Poster Url'];
  List iconfieldData = [
    Icons.title,
    Icons.category_outlined,
    Icons.date_range,
    Icons.link
  ];

var titlecontroller = TextEditingController();
var genrecontroller = TextEditingController();
var datecontroller = TextEditingController();
var urlcontroller = TextEditingController();

List textControllers=[titlecontroller,genrecontroller,datecontroller,urlcontroller];
  // var textEditingControllers = {
  //   'title': TextEditingController(),
  //   'genre': TextEditingController(),
  //   'year': TextEditingController(),
  //   'url': TextEditingController()
  // };

  submit()async{
    var data={
      'name':titlecontroller.text,
      'genre'

    }

  }

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
                      textfieldData[index],
                      iconfieldData[index],
                      textControllers[index]),
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
  var texteditingcontroller;
  final IconData icon;

  customTextField(this.label, this.icon, this.texteditingcontroller);
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
            controller: texteditingcontroller,
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
