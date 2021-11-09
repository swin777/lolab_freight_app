import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Delivery',
              style: TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
    );
  }
}