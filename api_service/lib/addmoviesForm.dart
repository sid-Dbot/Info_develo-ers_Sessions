import 'package:api_service/api/api_service.dart';
import 'package:flutter/material.dart';

class MoviesForm extends StatelessWidget {
  List<String> textfieldData = [
    'name',
    'email',
    'national_id',
    "complain_office",
    'complain_title',
    'complain_decs',
  ];
  List iconfieldData = [
    Icons.person,
    Icons.email,
    Icons.nat_outlined,
    Icons.local_post_office_rounded,
    Icons.title,
    Icons.description_sharp
  ];

  static TextEditingController namecontroller = TextEditingController();
  static var emailcontroller = TextEditingController();
  static var idcontroller = TextEditingController();
  static var officecontroller = TextEditingController();
  static var complaincontroller = TextEditingController();
  static var desccontroller = TextEditingController();

  List<TextEditingController> textControllers = [
    namecontroller,
    emailcontroller,
    idcontroller,
    officecontroller,
    complaincontroller,
    desccontroller
  ];

  _submit() async {
    var data = {
      'name': namecontroller.text,
      'email': emailcontroller.text,
      'national_id': idcontroller.text,
      'complain_office': officecontroller.text,
      'complain_title': complaincontroller,
      'complain_desc': desccontroller
    };
    print(data);
    return Apiservice().postData(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Please fill the details:',
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .75,
                child: ListView.builder(
                  itemCount: textfieldData.length,
                  itemBuilder: (context, index) => customTextField(
                      textfieldData[index],
                      iconfieldData[index],
                      textControllers[index]),
                ),
              ),
              ElevatedButton(onPressed: _submit, child: const Text('Submit'))
            ],
          ),
        ));
  }
}

class customTextField extends StatelessWidget {
  String label;
  final TextEditingController texteditingcontroller;
  final IconData icon;

  customTextField(
      {required this.label,
      required this.icon,
      required this.texteditingcontroller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
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
