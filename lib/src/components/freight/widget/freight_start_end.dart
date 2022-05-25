import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';
import 'package:lolab_freight_app/src/utils/util.dart';
import 'package:maplibre_gl/mapbox_gl.dart';

class FreightStartEnd extends StatelessWidget {
  Order order;
  FreightStartEnd({Key? key, required this.order}) : super(key: key);

  Widget gotoMapBtn(LatLng latLag){
    LatLng p = latLag;
    return IconButton(
      icon: const Icon(Icons.location_on_outlined, size: 34),
      onPressed: () { 
        Get.toNamed('map', id:1, arguments: {'order':order}); 
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff60acff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(2),
              child: const Text('상차', style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Row(
                children: [
                  Text('${toDayOrYYYYMM(order.loadingDateTime!)} ${DateFormat('HH:mm').format(order.loadingDateTime!)}', style: Theme.of(context).textTheme.caption,),
                  //Text('405km', style: Theme.of(context).textTheme.headline5,),
                ],
              )
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 14),
          padding: const EdgeInsets.only(left: 15),
          decoration: const BoxDecoration(
            border: Border( 
              left: BorderSide(
                color: Color(0xffd3dadf),
                width: 1,
              ),
            ),
          ), //
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text('${order.loadingAddress!} ${order.loadingDetailAddress!}', style: Theme.of(context).textTheme.headline3,)),
                  order.loadingLon!=null ? gotoMapBtn(LatLng(order.loadingLon!, order.loadingLat!)) : gotoMapBtn(const LatLng(37.4873468886489, 127.03086712329379)),
                ],
              ),
              line(),
            ],
          )
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff005e35),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(2),
              child: const Text('하차', style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
            const SizedBox(width: 10,),
            Text('${toDayOrYYYYMM(order.unloadingDateTime!)} ${DateFormat('HH:mm').format(order.unloadingDateTime!)}', style: Theme.of(context).textTheme.caption,),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 14),
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text('${order.unloadingAddress!} ${order.unloadingDetailAddress!}', style: Theme.of(context).textTheme.headline3,)),
                  order.unloadingLon!=null ? gotoMapBtn(LatLng(order.unloadingLon!, order.unloadingLat!)) : gotoMapBtn(const LatLng(35.17923092120002, 129.12595027491258)),
                ],
              ),
            ],
          )
        ),
        const SizedBox(height: 8,)
      ],
    );
  }
}