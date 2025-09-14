import 'package:flutter/material.dart';

Color getColor(double rate) {
  if (rate > 0) {
    return Colors.green;
  } else if (rate < 0) {
    return Colors.red;
  } else {
    return Colors.grey;
  }
}
