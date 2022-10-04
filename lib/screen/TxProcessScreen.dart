import 'package:flutter/material.dart';
import 'TranferScreen.dart';
import 'homepage/RequestScreen.dart';
import 'homepage/AddRecieptScreen.dart';


class TxProcessScreen extends StatefulWidget {
  const TxProcessScreen({Key? key}) : super(key: key);
  static const routeName = "/txProcess";
  @override
  State<TxProcessScreen> createState() => _TranferScreenState();
}

class _TranferScreenState extends State<TxProcessScreen> {
  late String isPage;
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments;
    isPage = routeArgs as String;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme:const IconThemeData(color: Colors.black),
          title:Text("Tranfer Money", style: const TextStyle(color: Colors.black)),
           backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(
                140 - (MediaQuery.of(context).padding.top * 0.99)),
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon:const Icon(Icons.filter_list),
                      prefixIcon:const Icon(Icons.search),
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fillColor:const Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                    ),
                  ),
                ),
                const TabBar(indicatorColor: Colors.black, tabs: [
                  Tab(text: "All"),
                  Tab(text: "Favorite"),
                  Tab(text: "Bank"),
                  Tab(text: "E-wallet")
                ]),
              ],
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {   
                  print("Data pass via args: " + isPage);
                  if(isPage == "requestPage"){
                    Navigator.of(context).pushNamed(RequestScreen.routeName);
                  }else{
                    Navigator.of(context).pushNamed(TranferScreen.routeName);
                  }
                },
                child: Card(
                    child: ListTile(
                        leading:const  CircleAvatar(
                          backgroundImage:
                              AssetImage("asset/Image/translator.jpg"),
                        ),
                        title:const Text("Name"),
                        subtitle: const Text("bank Account"),
                        trailing: IconButton(
                          icon:const Icon(Icons.star,
                              color: Color.fromARGB(255, 243, 219, 6)),
                          onPressed: () {},
                        ))),
              );
            }),
        floatingActionButton:
            FloatingActionButton(onPressed: (){
              
              Navigator.of(context).pushNamed(AddRecieptScreen.routeName);
            }, child:const Icon(Icons.add)),
      ),
    );
  }
}
