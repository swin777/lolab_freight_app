import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'freght_config_area.dart';
import 'freight_config.dart';

class FreightConfigMain extends StatelessWidget {
  const FreightConfigMain({Key? key}) : super(key: key);

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
          key: Get.nestedKey(2), 
          initialRoute:'config/info',
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case 'config/info':
                return GetPageRoute(
                  page: () {return FreightConfig(close: close); },
                  transition: Transition.rightToLeft
                );
              case 'config/areaSelect':
                return GetPageRoute(
                  page: () {return FreightConfigArea(); },
                  transition: Transition.leftToRight
                );
            }
          }
        )
      ),
    );
  }
}