import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FreightConfigArea extends StatelessWidget {
  const FreightConfigArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded, size: 40),
                onPressed: () => Get.toNamed('config/info', id:2),
              ),
              const Expanded(
                child: Align(
                  child: Text("지역을 선탁해세요", style: TextStyle(fontSize: 20, color: Colors.black)),
                  alignment: Alignment.center,
                )
              )
            ],
          )
        ],
      ),
    );
  }
}