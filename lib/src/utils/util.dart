import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

String wonString(int? val) {
  String fo = numberFormat.format(val ?? 0);
  return fo == '0' ? '결정안됨' : fo;
}

String toDayOrYYYYMM(DateTime date) {
  DateTime toDay = DateTime.now();
  if (date.year == toDay.year &&
      date.month == toDay.month &&
      date.day == toDay.day) {
    return "오늘";
  }
  return DateFormat('MM/dd').format(date);
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

Map carOptionCode = {
  'lift': '리프트',
  'antiSwing': '무진동',
  'longAxis': '장축',
  'plus': '플러스',
  'plusLongAxis': '플러스장축',
  'highTop': '하이탑',
  'lowTop': '로우탑',
};

getKeys(value) {
  String matchKey = carOptionCode.keys
      .toList()
      .where((element) => carOptionCode[element] == value)
      .first;
  return matchKey;
}

getOptionKeys(carOptions) {
  String res = '';
  carOptions.forEach((car) {
    res += '&carOption=' + getKeys(car);
  });
  return res;
  //return carOptions.map((car) => getKeys(car)).toList().toString();
}

getLocalCarOptionKeys() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  return getOptionKeys(_prefs.getStringList('carOption') ?? []);
}
