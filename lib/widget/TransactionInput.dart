import 'package:flutter/material.dart';

import '../screen/homepage/RecieptScreen.dart';

class TransactionInput extends StatefulWidget {
  final String isPage;
  const TransactionInput({required this.isPage, Key? key}) : super(key: key);

  @override
  State<TransactionInput> createState() => _TransactionInputState();
}

class _TransactionInputState extends State<TransactionInput> {
  late FocusNode myFocusNode;
  final currencyList = ["Kip", "Usd", "Bath"];
  String value = "\$";
  final _inputCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
  }

    Future<void> _ShowDialog() async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
              content: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Column(children: [
                    Container(
                        height: 100,
                        width: 100,
                        child:
                          const  Image(image: AssetImage("asset/icons/send.png"))),
                  const  Text(
                      "Request Sent!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                   const SizedBox(height: 10),
                   const Text("Your payment request have been sent",
                        style: TextStyle(fontSize: 14)),
                    SizedBox(height: 40),
                    Container(
                        width: 200,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              Navigator.of(ctx).pushNamed(RecieptScreen.routeName, arguments: widget.isPage);
                            },
                            child:const Text("View E-Reciept",
                                style: TextStyle(
                                  fontSize: 20,
                                )))),
                   const SizedBox(height: 10),
                    Container(
                        width: 200,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(197, 202, 236, 252),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child:const Text("Home",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue))))
                  ])));
        });
  }

  
  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("asset/Image/translator.jpg"),
                            ),
                            Text("Name"),
                            Text("Bank Account")
                          ],
                        )),
                    SizedBox(width: 280, child: Divider(color: Color.fromARGB(255, 182, 181, 181), thickness: 1,)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          myFocusNode.requestFocus();
                          FocusScope.of(context).hasFocus;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.blue)),
                        child: Stack(children: [
                          Positioned(
                            top: 12,
                            left: 20,
                            child: Container(
                                height: 35,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height: 25,
                                          child: CircleAvatar(
                                              child: Center(
                                            child: Text(value),
                                          ))),
                                      DropdownButton(
                                        enableFeedback: false,
                                        items: [
                                          DropdownMenuItem(
                                              child: Text("\$"), value: "\$"),
                                          DropdownMenuItem(
                                              child: Text("\฿"), value: "\฿"),
                                          DropdownMenuItem(
                                              child: Text("\K"), value: "\K"),
                                        ],
                                        onChanged: (identifier) {
                                          setState(() {
                                            value = identifier as String;
                                            myFocusNode.requestFocus();
                                          });
                                        },
                                      )
                                    ])),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Row(
                              children: [
                                Text(value as String,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 3),
                                Container(
                                    width: 100,
                                    child: TextField(
                                      focusNode: myFocusNode,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                        hintText: "000,00",
                                        hintStyle: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                    if(widget.isPage != "requestPage") Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // i want to use datepicker on this part when user click on
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 2),
                                  child: Text(("Schedule"),
                                      style: TextStyle(fontSize: 18)),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 150,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(
                                              255, 238, 237, 237),
                                          suffixIcon: IconButton(
                                            icon:
                                                Icon(Icons.date_range_outlined),
                                            onPressed: () {},
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20)))),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 2),
                                  child: Text("Hours",
                                      style: TextStyle(fontSize: 18)),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  width: 150,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(
                                              255, 238, 237, 237),
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.schedule),
                                            onPressed: () {},
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20)))),
                                ),
                              ],
                            ),
                          ]),
                    ),
                    
                    Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Select Category",
                                  style: TextStyle(fontSize: 18)),
                              Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: 320,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                                Icons.arrow_drop_down_outlined),
                                            onPressed: () {},
                                          ),
                                          filled: true,
                                          fillColor: Color.fromARGB(
                                              255, 238, 237, 237),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20)))))
                            ])),

                    Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Description",
                                  style: TextStyle(fontSize: 18)),
                              Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: 320,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color.fromARGB(
                                              255, 238, 237, 237),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(20)))))
                            ])),
                  ]),
                  // button for continue tranfer
                  // tomorow i will keep working on this part
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: 320,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text("ດຳເນີນການຕໍ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        onPressed: _ShowDialog),
                  )
                ]);
  }
}