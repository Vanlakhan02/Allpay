import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(backgroundImage: AssetImage("asset/Image/translator.jpg"),),
      Column(children: [
        Text("Good morning", style: TextStyle(fontSize: 16)),
        Text("Vanlakhan", style: TextStyle(fontSize: 20)),
      ])
    ]);
  }
}