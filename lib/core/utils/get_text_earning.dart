import 'package:borsa_app/core/utils/get_money_format.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Text getTextEarning(double money) {
  if (money > 0) {
    return Text(
      '${'totalProfit'.tr()}: ${moneyFormat(money)} TRY',
      style: TextStyle(color: Colors.green, fontSize: 20),
    );
  } else if (money < 0) {
    return Text(
      '${'totalLoss'.tr()}: ${moneyFormat(money)} TRY',
      style: TextStyle(color: Colors.red, fontSize: 20),
    );
  } else {
    return Text(
      '${'totalProfit'.tr()}: ${moneyFormat(money)} TRY',
      style: TextStyle(color: Colors.grey, fontSize: 20),
    );
  }
}
