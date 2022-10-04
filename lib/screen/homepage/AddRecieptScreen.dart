import 'package:flutter/material.dart';

class AddRecieptScreen extends StatelessWidget {
  const AddRecieptScreen({Key? key}) : super(key: key);
  static const routeName = "AddRecieptScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Reciept")),
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        width: 400,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                Text("Select Type", style: TextStyle(fontSize: 18)),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down_outlined)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 219, 218, 218),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 219, 218, 218),
                                width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                const SizedBox(
                  height: 20,
                ),
                Text("Account Number/Anddress",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 219, 218, 218),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 219, 218, 218),
                              width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 30, 27, 27), width: 4),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ]),

              //button for add account address
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("ເພີ່ມ", style: TextStyle(fontSize: 24)))),
            ]),
      ),
    );
  }
}
