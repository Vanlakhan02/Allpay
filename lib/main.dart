import 'package:allpay/Model/promotionModel.dart';
import 'package:allpay/screen/homepage/AllScreen.dart';
import 'package:allpay/screen/homepage/HomePage.dart';
import 'package:allpay/screen/NotificationScreen.dart';
import 'package:allpay/screen/homepage/RecieptScreen.dart';
import 'package:flutter/material.dart';
import './screen/Tap_Screen.dart';
import './screen/PromotionScreen.dart';
import './screen/NotificationScreen.dart';
import 'screen/homepage/RequestScreen.dart';
import 'screen/TxProcessScreen.dart';
import 'screen/TranferScreen.dart';
import './provider/promotion_Model_Provider.dart';
import 'package:provider/provider.dart';
import 'screen/homepage/AddRecieptScreen.dart';
import './screen/HistoryScreen.dart';

void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Promotion(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
             '/' : (context)=>Tap_Screen(),
             HomePage.routeName :(context) => HomePage(),
             PromotionScreen.routName : (context) => PromotionScreen(),
             NotificationScreen.routeName :(context) => NotificationScreen(),
             AllScreen.routeName : (context)=> AllScreen(),
             TxProcessScreen.routeName : (context)=> TxProcessScreen(),
             TranferScreen.routeName : (context)=> TranferScreen(),
             AddRecieptScreen.routeName : (context)=> AddRecieptScreen(),
             RecieptScreen.routeName : (context) => RecieptScreen(),
             RequestScreen.routeName : (context)=> RequestScreen(),
             HistoryScreen.routeName : (context)=> HistoryScreen(),
       }, 
      ),
    );
  }
}

