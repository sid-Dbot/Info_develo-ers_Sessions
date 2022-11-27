import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';
import 'dashboard.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<loginPage> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    context.read<Api>();
    Provider.of<Api>(context).getData();
    //final datas = Provider.of<Api>(context).userdata;
    final send = Provider.of<Api>(context);

    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const Center(
              child: Text(
                'Login:',
                style: TextStyle(fontSize: 25),
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email.';
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              validator: ((value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              }),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
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
                  }
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
