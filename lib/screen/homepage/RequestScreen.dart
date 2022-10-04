import 'package:flutter/material.dart';
import '../../widget/TransactionInput.dart';

class RequestScreen extends StatelessWidget {
  static final routeName = "/request";
  const RequestScreen({Key? key}) : super(key: key);
  final isPage = "requestPage";


  @override
  Widget build(BuildContext context) {
      final appBar = AppBar(
      title: Text("Request"),
      actions: [
        Padding(padding: const EdgeInsets.all(10),child: Icon(Icons.ad_units))
      ]
    );

    PreferredSizeWidget preferredSize = appBar as PreferredSizeWidget;
    return Scaffold(
        appBar: appBar,
    body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - preferredSize.preferredSize.height - MediaQuery.of(context).padding.top,
          alignment: Alignment.topCenter, 
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child:TransactionInput(isPage: isPage),
          )),
    ),
    );
  }
}
