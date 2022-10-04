import 'package:flutter/material.dart';
import '../../Model/Button.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({Key? key}) : super(key: key);
  static const routeName = "/AllScreen";
  @override
  Widget build(BuildContext context) {
    final dataButton = listButton;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("All Services", style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white
       ,actions: [
        IconButton(
          icon: Icon(Icons.more_vert_rounded),
          onPressed: () {},
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Bill", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 180,
                    width: 350,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 4 / 4,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemCount: dataButton.length,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: CircleAvatar(
                                    child: SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: Image(
                                            image: AssetImage(dataButton[index].image),
                                            fit: BoxFit.fill))),
                              ),
                                          Text(dataButton[index].name)
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
         Card(child: 
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Padding(
             padding: const EdgeInsets.all(10),
             child: Text("Insurance", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
           ),
           Container(
            height: 150,
           width: 90,
           child: Row(children: [])
           ),
         ],)),
                  Card(child: 
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Padding(
             padding: const EdgeInsets.all(10),
             child: Text("Option", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
           ),
           Container(
            height: 100,
           width: 90,
           child: Row(children: [])
           ),
         ],))
        ]),
      ),
    );
  }
}
