import 'package:flutter/material.dart';
import '../widget/promotion_list.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({Key? key}) : super(key: key);
  static const routName = "/PromotionScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
           color: Colors.black, //change your color here
          ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Promotion & Discount", style: TextStyle(color: Colors.black))),
      body: PromotionList());
  }
}

