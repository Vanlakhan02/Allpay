import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../Data_statistic/LineTitles.dart';

class Statistic_screen extends StatefulWidget {
  const Statistic_screen({Key? key}) : super(key: key);

  @override
  State<Statistic_screen> createState() => _Statistic_screenState();
}

class _Statistic_screenState extends State<Statistic_screen> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a)
  ];
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Statistic",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(width: 2, color: Colors.blue))),
                      onPressed: () {},
                      child: Text("This week", style: TextStyle(fontSize: 14)))
                ]),
          ),
          Container(
            height: mediaQuery.height * 0.4,
            child: LineChart(
              LineChartData(
                  maxX: 11,
                  minX: 0,
                  maxY: 6,
                  minY: 0,
                  titlesData: LineTitles.getTitleData(),
                  backgroundColor: Color.fromARGB(255, 254, 255, 255),
                  gridData: FlGridData(
                      show: false,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: const Color(0xff37434d),
                          strokeWidth: 1,
                        );
                      },
                      drawVerticalLine: true,
                      getDrawingVerticalLine: (value) {
                        return FlLine(
                            color: const Color(0xff37434d), strokeWidth: 1);
                      }),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  lineBarsData: [
                    LineChartBarData(
                        spots: [
                          FlSpot(0, 2),
                          FlSpot(2.6, 3),
                          FlSpot(4.9, 4),
                          FlSpot(6.8, 2.5),
                          FlSpot(8, 3),
                          FlSpot(9.5, 4),
                          FlSpot(11, 2)
                        ],
                        isCurved: true,
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 141, 0, 54),
                          Color.fromARGB(255, 193, 41, 231),
                        ])),
                    //income
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 3),
                        FlSpot(2.6, 2),
                        FlSpot(4.9, 5),
                        FlSpot(6.8, 2.5),
                        FlSpot(8, 4),
                        FlSpot(9.5, 3),
                        FlSpot(11, 4)
                      ],
                      isCurved: true,
                      gradient: LinearGradient(colors: gradientColors),
                      barWidth: 3,
                      dotData: FlDotData(show: false),
                      /*               belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(colors: gradientColors.map((color) => color.withOpacity(0.3)).toList())
                    ) */
                    )
                  ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  show_mn("asset/Image/expense.png"),
                  show_mn("asset/Image/economics.png")
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transaction",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  TextButton(
                    child: Text("See all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    onPressed: () {},
                  )
                ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Card(
                child: Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "asset/Image/translator.jpg"))),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Vanlakhan"),
                                  Text("December/12/2022")
                                ]),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, top: 10, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("\$250"),
                            Row(
                              children: [
                                Icon(Icons.download_outlined, color: Colors.blue),
                                Text("Icome", style: TextStyle(color: Colors.blue)),
                              ],
                            )
                          ])),
                      ],
                    )),
              )),
        ],
      ),
    );
  }

  Widget show_mn(String path) {
    return Card(
      child: Container(
        height: 60,
        width: 140,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Image(image: AssetImage(path))),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("\$10000000"), Text("Income")]),
          )
        ]),
      ),
    );
  }
}
