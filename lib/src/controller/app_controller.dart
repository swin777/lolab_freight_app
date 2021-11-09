import 'package:get/get.dart';

enum RouteName {Freight, Delivery, Etc}

class AppController extends GetxController {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex(index);
  }

  // void _showBottormSheet(){
  //   Get.bottomSheet(YoutubeBottomSheet());
  // }
} 