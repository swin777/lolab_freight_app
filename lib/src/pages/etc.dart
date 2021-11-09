import 'package:flutter/material.dart';

class Etc extends StatelessWidget {
  const Etc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Etc',
              style: TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
    );
  }
}