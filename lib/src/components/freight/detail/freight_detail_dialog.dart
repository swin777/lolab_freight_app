import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'freight_detail_info.dart';
import 'freight_posion_map.dart';

class FreightDetailDialog extends StatelessWidget {
  const FreightDetailDialog({Key? key}) : super(key: key);

  void close(){
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      //child:FreightDetailInfo(close: close, parentContext:context)
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
        child : Navigator(
          key: Get.nestedKey(1), 
          initialRoute:'detail/info',
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case 'detail/info':
                return GetPageRoute(
                  page: () {return FreightDetailInfo(close: close); },
                  transition: Transition.rightToLeft
                );
              case 'map':
                return GetPageRoute(
                  page: () {return FreightPostionMap(); },
                  transition: Transition.leftToRight
                );
            }
          }
        )
      ),
    );
  }
}