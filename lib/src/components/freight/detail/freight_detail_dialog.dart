import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'freight_detail_info.dart';
import 'freight_posion_map.dart';

class FreightDetailDialog extends StatelessWidget {
  const FreightDetailDialog({Key? key}) : super(key: key);

  void close(BuildContext context){
    Navigator.of(context).pop();
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
        child: Navigator(
          initialRoute: 'detail/info',
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case 'detail/info':
                builder = (BuildContext _) => FreightDetailInfo(close: close, parentContext:context);
                break;
              case 'detail/map':
                //builder = (BuildContext _) => FreightPostionMap();
                return PageTransition(child: FreightPostionMap(), type: PageTransitionType.scale, alignment: Alignment.bottomCenter);
              default:
                throw Exception('Invalid route: ${settings.name}');
            }
            return MaterialPageRoute(builder: builder, settings: settings);
          },
        ),
      ),
    );
  }
}