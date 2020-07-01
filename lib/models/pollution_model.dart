import 'package:flutter/foundation.dart';

class PollutionModel {
  final String place;
  final int year;
  final int quantity;

  PollutionModel({
    @required this.place,
    @required this.year,
    @required this.quantity,
  });
}
