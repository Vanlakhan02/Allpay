import 'package:flutter/material.dart';
import '../screen/TxProcessScreen.dart';
import '../screen/HistoryScreen.dart';

class PayStatus extends StatefulWidget {
  const PayStatus({Key? key}) : super(key: key);

  @override
  State<PayStatus> createState() => _PayStatusState();
}

class _PayStatusState extends State<PayStatus> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2), //(x,y)
                    blurRadius: 2,
                  )],
             image: DecorationImage(
               image: AssetImage("asset/Image/statusBG.jpg"),fit: BoxFit.cover),
               color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Stack(
              children: [
              Positioned(
               left: 220,
               child: Row(children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image(image: AssetImage("asset/Image/Visa.png"))),
                SizedBox(width: 5),
                Container(
                  height: 40,
                  width: 40,
                  child: Image(image: AssetImage("asset/Image/maestro.png"))),
             ])),
              Positioned(
          top: 15,
          left: 25,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
          Text("Vanlakhan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 10),
          Text("9816 53131 3224", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 10),
          Text("Your Balance", style: TextStyle(fontSize: 14, color: Colors.white)),
          SizedBox(height: 10),
          Text("\$ 10.000,000 ", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.white))
              ])),

         Positioned(
           top: 160,
           left: 20,
           right: 20,
           child: Container(
            margin: const EdgeInsets.only(bottom: 50),
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(20)),
             width: MediaQuery.of(context).size.width * 0.70,
             height: MediaQuery.of(context).size.height * 0.12,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox( height: 50, width: 50, child: CircleAvatar(child: IconButton(onPressed: (){
                        Navigator.of(context).pushNamed(TxProcessScreen.routeName, arguments: "tranferPage");
                      }, icon: Icon(Icons.send)))),
                      Text("Tranfer", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox( height: 50, width: 50, child: CircleAvatar(child: IconButton(onPressed: (){
                        Navigator.of(context).pushNamed(TxProcessScreen.routeName, arguments: "requestPage");
                      }, icon: Icon(Icons.wallet)))),
                      Text("Request", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox( height: 50, width: 50, child: CircleAvatar(child: IconButton(onPressed: (){
                        Navigator.of(context).pushNamed(HistoryScreen.routeName);
                      }, icon: Icon(Icons.drive_folder_upload_rounded)))),
                      Text("In & Out", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
               ]),
             ),
           ),
               ),
              ])
            ),
        );
  }
}
