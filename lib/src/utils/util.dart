import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget line({double horizontal = 0}) {
  return Container(
    height: 1,
    margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: 8),
    color: Colors.grey.withOpacity(0.2),
  );
}

Widget verticalLine() {
  return Container(
      width: 1, height: double.maxFinite, color: const Color(0xffd3dadf));
}

Widget lineBottom({double horizontal = 0}) {
  return Container(
    height: 1,
    margin: EdgeInsets.only(bottom: 15),
    color: Colors.grey.withOpacity(0.2),
  );
}

var numberFormat = NumberFormat('###,###,###,###');

String wonString(int? val){
  String fo = numberFormat.format(val ?? 0);
  return fo == '0' ? '결정안됨' : fo;
}

String toDayOrYYYYMM(DateTime date){
  DateTime toDay = DateTime.now();
  if(date.year==toDay.year && date.month==toDay.month && date.day==toDay.day){
    return "오늘";
  }
  return DateFormat('MM/dd').format(date);
}