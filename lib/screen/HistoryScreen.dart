import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  static final routeName = "/History";
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  var current = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("In & Out payment"),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            actions: const [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.send_and_archive)),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.more_vert_outlined))],
          ),
          body: Container(
            child: Column(children: [
              TabHorizonal(),

              Padding(
                padding: const EdgeInsets.only(left: 14, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Showing"),
                  TextButton.icon(icon: Icon(Icons.download),label: Text("Download"), onPressed: () {  },)
                ]),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.73,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index){
                  return Card(child: ListTile(leading: CircleAvatar(foregroundImage: AssetImage("asset/Image/translator.jpg")), title: Text("Airbnb"), subtitle: Text("date: 12/2/2022"), trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text("25\$"),
                    Container(
                      height: 20,
                      width: 60,
                  //    padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(3)),
                      child: Text("schedule", style: TextStyle(fontSize: 12)))
                  ])));
                }),
              )
            ])
          ));
  }



// list of the tabar
Widget TabHorizonal(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
               TabCustome("History", 1),
               TabCustome("Schedule", 2),
               TabCustome("Request", 3),
  ]);
}

Widget TabCustome(String text, int index){
  return InkWell(
    onTap: (){
      setState(() {
        current = index;
      });
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer( 
        height: 40,
        width: 120,
        duration: const Duration(milliseconds: 100,),
        decoration: BoxDecoration(color:current == index? Colors.blue : Colors.white, borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.blue)),
        child: Center(child: Text(text, style: TextStyle(color: current == index? Colors.white : Colors.black)))),
    ),
  );
}
}


