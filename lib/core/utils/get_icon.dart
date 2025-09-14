import 'package:flutter/material.dart';

Icon  getIcon(double money) {
  if (money > 0) {
    return const Icon(Icons.trending_up, color: Colors.green);
  } else if (money < 0) {
    return const Icon(Icons.trending_down, color: Colors.red);
  } else {
    return const Icon(Icons.remove, color: Colors.grey);
  }
} 
