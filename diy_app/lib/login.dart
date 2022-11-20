import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';
import 'dashboard.dart';
import 'customTextField.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<loginPage> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    context.read<Api>();
    Provider.of<Api>(context).getData();
    //final datas = Provider.of<Api>(context).userdata;
    final send = Provider.of<Api>(context);

    return Scaffold(
      body: Column(
        children: [
          // Card(
          //   elevation: 9,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: datas.length,
          //     itemBuilder: (context, index) {
          //       return TextButton(
          //           onPressed: () {
          //             Navigator.pushNamed(
          //                 arguments: datas[index].id, context, 'details');
          //           },
          //           child: Text(datas[index].email.toString()));
          //     },
          //   ),
          // ),
          const Center(
            child: Text(
              'Login:',
              style: TextStyle(fontSize: 25),
            ),
          ),
          customTextField(textController: emailController, hintText: 'Email'),
          customTextField(
              textController: passwordController, hintText: 'Password'),
          ElevatedButton(
              onPressed: () {
                send.postData(emailController.text.toString(),
                    passwordController.text.toString());
                (send.verified == true)
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ))
                    : showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Invalid email or password!'),
                            content: Text(
                              'Please try again',
                              textAlign: TextAlign.center,
                            ),
                            actions: [],
                            elevation: 24,
                          );
                        },
                        barrierDismissible: true,
                      );
              },
              child: const Text('Login'))
          // TextField(
          //     controller: nameController,
          //     decoration: const InputDecoration(
          //         label: Text('Name'),
          //         border: OutlineInputBorder(
          //             borderSide: BorderSide(),
          //             borderRadius: BorderRadius.all(Radius.circular(9))))),
          // TextField(
          //     controller: job,
          //     decoration: const InputDecoration(
          //         label: Text('Job Title'),
          //         border: OutlineInputBorder(
          //             borderSide: BorderSide(),
          //             borderRadius: BorderRadius.all(Radius.circular(9))))),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       Api().postData(nameController.text.toString(), job.text.toString());
      //     },
      //     child: const Icon(Icons.send)),
    );
  }
}
