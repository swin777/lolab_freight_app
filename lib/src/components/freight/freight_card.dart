import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/components/freight/widget/freight_start_end_simple.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

class FreightCard extends StatelessWidget {
  int index;
  FreightCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: index%2==0 ? Colors.white : Colors.grey[500],
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: FreightStartEndSimple(),
    );
  }
}