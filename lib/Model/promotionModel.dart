import 'package:flutter/material.dart';

class PromotionModel {
  String id;
  String title;
  String description;
  int discountPercent;
  PromotionModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.discountPercent});
}
