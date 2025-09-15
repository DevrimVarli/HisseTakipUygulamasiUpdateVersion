import 'package:easy_localization/easy_localization.dart';


import 'package:intl/intl.dart';

String moneyFormat(double? money, {String locale = 'tr_TR'}) {
  if (money == null) return "-"; 
  return NumberFormat('#,##0.00', locale).format(money);
}
