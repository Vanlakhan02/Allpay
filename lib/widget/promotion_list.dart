import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/promotion_Model_Provider.dart';

class PromotionList extends StatelessWidget {
  const PromotionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listPromotion = Provider.of<Promotion>(context);
    final promotionItem = listPromotion.items;
    return ListView.builder(
    itemCount: promotionItem.length,
    itemBuilder: (ctx,index){
      return Padding(padding: const EdgeInsets.all(8),child: Container(
        width: 80,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.amber
          ,borderRadius: BorderRadius.circular(20)),
        child: Stack(children: [
        Positioned(
          top: 30,
          right: 40,
          child: Text("${promotionItem[index].discountPercent}%", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        Positioned(
          top: 35,
          left: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${promotionItem[index].discountPercent}% off", style: TextStyle(fontSize: 16,)),
              SizedBox(height: 10),
              Text(promotionItem[index].title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Text(promotionItem[index].description,textAlign: TextAlign.start ,style: TextStyle(fontSize: 14,))
          ]),
        )
      ])));
    });
  }
}