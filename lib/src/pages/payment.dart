import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/payment/payment_list.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Text(
    //           'Payment',
    //           style: TextStyle(fontSize: 48),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return SafeArea(
      child : PaymentList()
    );
  }
}