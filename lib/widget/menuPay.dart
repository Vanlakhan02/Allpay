import 'package:allpay/Model/Button.dart';
import 'package:flutter/material.dart';
import '../Model/Button.dart';
import '../screen/TxProcessScreen.dart';

class MenuPay extends StatelessWidget {
  const MenuPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listButtons = listButton;
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.9,
      child: GridView.builder(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              childAspectRatio: 2/2.4,
              mainAxisSpacing: 10),
          itemCount: listButtons.length,
          itemBuilder: (ctx, index) {
            return InkWell(
              enableFeedback: true,
              onTap:(){},
              child: Column(
                  children: [
                     Container(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                            child: Image(
                              width: 25,
                              height: 25,
                              image: AssetImage(listButtons[index].image,),fit: BoxFit.fill )),
                      ),
                    
                    const SizedBox(height: 5,),
                    Text(listButtons[index].name, style: TextStyle(fontSize: 14))
                  ],
                ),
            );
          }),
    );
  }
}
