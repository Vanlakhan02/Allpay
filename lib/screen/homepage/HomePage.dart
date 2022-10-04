import 'package:allpay/widget/menuPay.dart';
import 'package:flutter/material.dart';
import '../../widget/pay_status.dart';
import 'AllScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return  Container(
    
      child: SingleChildScrollView(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PayStatus(),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 20, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Service", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: () {
                      Navigator.of(context).pushNamed(AllScreen.routeName);
                    }, child: Text("See All", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),]),),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: MenuPay())
              ],
            ),
      ),
    );
  }
}
