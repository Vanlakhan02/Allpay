import 'package:flutter/material.dart';


// this is the cumtom numeric keyboard, if you want to modify the keyboard or use device soft keyboard. you can delete here
class KeyBoard extends StatefulWidget {
  const KeyBoard({Key? key}) : super(key: key);

  @override
  State<KeyBoard> createState() => _KeyBoardState();
}

class _KeyBoardState extends State<KeyBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(child: GridView.builder(itemCount: 9,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      childAspectRatio: 2/3
      ),itemBuilder: (conext, index){
      return Container();
    },
    ));
  }
}