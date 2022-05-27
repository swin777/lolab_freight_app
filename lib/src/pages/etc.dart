import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/controller/login_controller.dart';

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
            // Text(
            //   'Etc',
            //   style: TextStyle(fontSize: 48),
            // ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                LoginController.to.logout();
              },
              child: const Text('로그아웃'),
            )
          ],
        ),
      ),
    );
  }
}