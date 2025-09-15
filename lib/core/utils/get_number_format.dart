import 'package:easy_localization/easy_localization.dart';

 String formatDouble(double number) {
    return NumberFormat('#,##0.00', 'tr_TR').format(number);
  }
String formatInt(int number) {
    return NumberFormat('#,##0', 'tr_TR').format(number);
  }
