import 'package:flutter/material.dart';

class Tranfer {
  String tx_id;
  String accID;
  double amount;
  String date_time;
  String category;
  String note;  // description for explaint about your transaction
  
  Tranfer(
      {required this.tx_id,
      required this.accID,
      required this.amount,
      required this.date_time,
      required this.category,
      required this.note});
}
