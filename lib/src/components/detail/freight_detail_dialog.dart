import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/components/detail/freight_detail_info.dart';
import 'package:lolab_freight_app/src/components/detail/freight_posion_map.dart';
import 'package:page_transition/page_transition.dart';

class FreightDetailDialog extends StatelessWidget {
  const FreightDetailDialog({Key? key}) : super(key: key);

  void close(BuildContext context){
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(12),
      backgroundColor: Colors.transparent,
      //child:FreightDetailInfo(close: close, parentContext:context)
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 240,
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