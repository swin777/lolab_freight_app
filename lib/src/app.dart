import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/pages/payment.dart';
import 'controller/app_controller.dart';
import 'pages/delivery.dart';
import 'pages/etc.dart';
import 'pages/freight.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Obx(() {
          switch (RouteName.values[controller.currentIndex.value]) {
            case RouteName.Freight:
              return Freight();
            case RouteName.Delivery:
              return Delivery();
            case RouteName.Payment:
              return Payment();
            case RouteName.Etc:
              return Etc();
          }
        }),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            showSelectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: Theme.of(context).primaryColor,
            onTap: (index) {
              controller.changePageIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(TablerIcons.truck),
                label: '화물목록',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: "배송목록",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.request_quote_outlined), //money_sharp
                label: "정산",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.view_week_sharp),
                label: "더보기",
              ),
            ],
          ),
        ),
      ),
      onWillPop: controller.willPopScope
    );
  }
}
