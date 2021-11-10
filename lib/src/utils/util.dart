import 'package:flutter/material.dart';

Widget line({double horizontal=0}) {
  return Container(
    height: 1,
    margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: 8),
    color: Colors.grey.withOpacity(0.2),
  );
}

Widget verticalLine(){
  return Container(
    width: 1,
    height: double.maxFinite,
    color: Color(0xffd3dadf)
  );
}