import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/components/freight/widget/freight_start_end_simple.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';

class FreightCard extends StatelessWidget {
  int index;
  Order order;
  FreightCard({Key? key, required this.index, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    index == 999 ? Container(height: 20, color: Colors.grey[300],) :
    Card(
      //color: index%2==0 ? Colors.white : Colors.grey[500],
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: FreightStartEndSimple(order:order),
    );
  }
}