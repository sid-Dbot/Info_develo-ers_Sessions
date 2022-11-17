import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;

  const customTextField({required this.textController, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
            fillColor: Colors.cyan,
            filled: true,
            //hintText,
            hintText: hintText,
            // prefixIcon
            // prefixIcon: Icon(icon, color: Colors.yellow),
            //focusedBorder
            // focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(15),
            //     borderSide: const BorderSide(
            //       width: 0.0,
            //       color: Colors.white,
            //     )),
            // //enabled Border
            // enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(15),
            //     borderSide: const BorderSide(
            //       width: 0.0,
            //       color: Colors.white,
            //     )),
            // // enabledBorder
            // //
            // // border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
      ),
    );
  }
}
