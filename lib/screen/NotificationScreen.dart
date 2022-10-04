import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const routeName = "/Notification";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,backgroundColor: Colors.white,title: Text("Notification", style: TextStyle(color: Colors.black))),
     body: 
     Padding(
       padding: const EdgeInsets.all(10),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         Text("Today", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
         Card(child: ListTile(leading:CircleAvatar(child:Icon(Icons.card_membership)),
         title:Text("You will get cashback", style: TextStyle(fontWeight: FontWeight.bold)),
         subtitle: Text("you will 5 from payment"),
          )),

          Text("Yesterday",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Card(
            child: ListTile(leading: CircleAvatar(child: Icon(Icons.add_box)), 
            title: Text("Service is available"),
            subtitle: Text("you will get service in everywhere")),
          ),

          Card(
            child: ListTile(leading:CircleAvatar(child: Icon(Icons.newspaper)), 
            title: Text("Netflix Bill Subscription"),
            subtitle: Text("Subscription will pay to netflix")),
          ),

          Text("December 14 2014", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Card(
            child: ListTile(leading:CircleAvatar(child: Icon(Icons.wallet_sharp)), 
            title: Text("E-wallet is connected"),
            subtitle: Text("Your E-wallet is connected to AllPay")),
          ),
          
          Card(
            child: ListTile(leading:CircleAvatar(child: Icon(Icons.verified,)), 
            title: Text("Verification Successful"),
            subtitle: Text("Account verificatioin complete")),
          ),
       ],),
     )
    );
  }
}