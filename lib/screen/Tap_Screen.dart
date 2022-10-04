import 'package:allpay/screen/NotificationScreen.dart';
import 'package:allpay/screen/statistic_screen/statistic_screen.dart';
import 'package:flutter/material.dart';
import 'homepage/HomePage.dart';
import '../screen/MyWallet.dart';
import '../screen/PromotionScreen.dart';
import 'profile/Profile_screen.dart';
class Tap_Screen extends StatefulWidget {
  const Tap_Screen({Key? key}) : super(key: key);

  @override
  State<Tap_Screen> createState() => _Tap_ScreenState();
}

class _Tap_ScreenState extends State<Tap_Screen> {
   List<Map<String, Object>>? _pages;
   int _selectPageIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    _pages = [
      {"page" : HomePage()},
      {"page" : Statistic_screen()},
      {"page" : MyWallet()},
      {"page": Profile()}
    ];
    super.initState();
  }

  void selectPage(int index){
    setState(() {
      _selectPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Home", style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(color: Colors.black,icon: Icon(Icons.production_quantity_limits), onPressed: (){
          Navigator.of(context).pushNamed(PromotionScreen.routName);
        }),
        IconButton(color: Colors.black, icon: Icon(Icons.notifications_active), onPressed: (){
           Navigator.of(context).pushNamed(NotificationScreen.routeName);
        })
      ]
    ),
    body: _pages![_selectPageIndex]['page'] as Widget,
    bottomNavigationBar: BottomNavigationBar(
      onTap: selectPage,
      backgroundColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.blue,
      currentIndex: _selectPageIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.auto_graph_outlined), label: "statistic"),
        BottomNavigationBarItem(
        icon: Icon(Icons.wallet), 
        label: "My-Wallet"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
      ]),
    );
  }
}