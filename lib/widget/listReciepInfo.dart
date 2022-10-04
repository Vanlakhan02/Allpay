import 'package:flutter/material.dart';


class ListReciepInfo extends StatelessWidget {
  final String title;
  final String userInfo;
  const ListReciepInfo({required this.title, required this.userInfo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)), 
        if(title != "Status")Text(userInfo, style: TextStyle(fontSize: 14)),
        if(title == "Status") Card( 
          color: Colors.blue, 
          child:Container(
            width: 80, 
            height: 25,
            alignment: Alignment.center,
            child: Text(userInfo, style: TextStyle(fontSize: 14, color: Colors.white)),
          )),
      ]),
    );
  }
}