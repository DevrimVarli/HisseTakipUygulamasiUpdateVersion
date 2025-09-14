import 'package:flutter/material.dart';

Text getTextEarning(double money) {
  if (money > 0) {
    return Text(
      'Toplam Kar: ${money.toStringAsFixed(2)} TRY',
      style: TextStyle(color: Colors.green, fontSize: 20),
    );
  } else if (money < 0) {
    return Text(
      'Toplam Zarar: ${money.toStringAsFixed(2)} TRY',
      style: TextStyle(color: Colors.red, fontSize: 20),
    );
  } else {
    return Text(
      'Toplam Kar: ${money.toStringAsFixed(2)} TRY',
      style: TextStyle(color: Colors.grey, fontSize: 20),
    );
  }
}
