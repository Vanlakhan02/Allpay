import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles{
  static getTitleData() {
    return FlTitlesData(
      show:true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: true,
        reservedSize: 22,
        getTitlesWidget:(value, metadata){
          switch(value.toInt()){
            case 2:
            return Text("MAR");
            case 5: 
            return Text("JUNE");
            case 8:
            return Text("SEP");
          }
          return Text("");
        }
        )
      ),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(
        reservedSize: 28,
        showTitles: true,
        getTitlesWidget: (value, metaData){
          return Text(" ");
        }
        )),
      leftTitles: AxisTitles(sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 28,
        getTitlesWidget: (value, metaData){
          switch(value.toInt()){
            case 1:
            return Text('10k');
            case 3:
            return Text("30k");
            case 3: 
            return Text("50k");
          }
          return Text("");
        }
        ))
    );
  }
}