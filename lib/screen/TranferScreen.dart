import 'package:flutter/material.dart';
import '../widget/TransactionInput.dart';
import 'homepage/RecieptScreen.dart';
// now i'm working on this part, next will keep to decorate the ui
class TranferScreen extends StatefulWidget {
  const TranferScreen({Key? key}) : super(key: key);
  static const routeName = "/inputMoney";

  @override
  State<TranferScreen> createState() => _TranferScreenState();
}

class _TranferScreenState extends State<TranferScreen> {
  var isPage = "tranferPage";
  var appBar = AppBar(
    title: Text("Tranfer Money", style: TextStyle(color: Colors.black)),
    actions: [
      IconButton(
        icon: Icon(Icons.star),
        onPressed: () {},
      )
    ],
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
  );


  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget preferredSize = appBar as PreferredSizeWidget;
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height -
                preferredSize.preferredSize.height -
                MediaQuery.of(context).padding.top,
            color: Colors.white,
            child: TransactionInput( isPage: isPage,)),
      ),
    );
  }
}
