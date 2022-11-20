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
          ],
        ),
      ),
    );
  }
}
