import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

class FreightStartEnd extends StatelessWidget {
  const FreightStartEnd({Key? key}) : super(key: key);

  Widget gotoMapBtn(){
    return IconButton(
      icon: const Icon(Icons.location_on_outlined, size: 34),
      onPressed: () => Get.toNamed('map', id:1),
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
                  Text('오늘 10:30 ', style: Theme.of(context).textTheme.caption,),
                  Text('405km', style: Theme.of(context).textTheme.headline5,),
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
                  Expanded(child: Text('서울 서초 강남대로 43길 강남빌딩 B동 102호', style: Theme.of(context).textTheme.headline3,)),
                  gotoMapBtn(),
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
                color: const Color(0xff2a3f85),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(2),
              child: const Text('하차', style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
            const SizedBox(width: 10,),
            Text('11/01 14:30', style: Theme.of(context).textTheme.caption,),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 14),
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text('부산 해운대구 해운대로 213길 롯데빌딩 EAST 2308호', style: Theme.of(context).textTheme.headline3,)),
                  gotoMapBtn(),
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