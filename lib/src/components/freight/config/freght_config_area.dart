import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FreightConfigArea extends StatelessWidget {
  const FreightConfigArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded, size: 40),
                onPressed: () => Get.back(id: 2)),
            const Expanded(
                child: Align(
              child: Text("지역을 선택하세요",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              alignment: Alignment.center,
            ))
          ],
        )
      ],
    );
  }
}
