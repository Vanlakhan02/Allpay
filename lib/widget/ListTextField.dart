import 'package:flutter/material.dart';

class ListTextField extends StatelessWidget {
  final String title;
  const ListTextField({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title,
          style: TextStyle(
            fontSize: 18,
          )),
      SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 219, 218, 218),
            enabledBorder: OutlineInputBorder(
                borderSide:const BorderSide(
                    color: Color.fromARGB(255, 219, 218, 218), width: 1),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
                borderSide:const BorderSide(
                    color: Color.fromARGB(255, 30, 27, 27), width: 4),
                borderRadius: BorderRadius.circular(10))),
      ),
    ]);
  }
}
