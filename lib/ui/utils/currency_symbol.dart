
import 'dart:io';

import 'package:intl/intl.dart';

 NumberFormat currency(){
  final format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: "NGN");
  return format;
}
extension Currency on String{
 String currency(){
  final format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: "NGN");
  return "${format.currencySymbol}$this";
 }

}