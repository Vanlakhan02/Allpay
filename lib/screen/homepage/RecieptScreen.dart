import 'package:allpay/widget/listReciepInfo.dart';
import 'package:flutter/material.dart';

class RecieptScreen extends StatelessWidget {
  const RecieptScreen({Key? key}) : super(key: key);
  static const routeName = "/RecieptScreen";
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments;
    final String isPage = routeArgs as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Reciept", style: TextStyle(fontSize: 24)),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              elevation: 5,
              margin: const EdgeInsets.only(left: 40, right: 40, top: 40),
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(children: [
                  Container(
                      child: CircleAvatar(
                          backgroundImage:
                              AssetImage("asset/Image/translator.jpg"))),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(color: Colors.grey, thickness: 1),
                  ListReciepInfo(title: "Amount", userInfo: "\$"),
                  ListReciepInfo(
                      title: "Bank Account", userInfo: "0101215454848"),
                  if (isPage != "requestPage")
                    ListReciepInfo(title: "Schedule", userInfo: "NO"),
                  if (isPage != "requestPage")
                    ListReciepInfo(title: "Hours", userInfo: "NO"),
                  ListReciepInfo(title: "Category", userInfo: "Salary"),
                  ListReciepInfo(title: "Transaction Date", userInfo: "NO"),
                  ListReciepInfo(
                      title: "Transaction ID", userInfo: "0101215454848"),
                  ListReciepInfo(
                      title: "Note", userInfo: "Thank you for hardworking"),
                  ListReciepInfo(title: "Status", userInfo: "complete"),
                ]),
              ),
            ),
            Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: const Text("ດາວໂຫລດ E-Reciept",
                      style: TextStyle(fontSize: 20))),
            )
          ],
        ),
      ),
    );
  }
}
