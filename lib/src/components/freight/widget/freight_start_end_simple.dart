import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

class FreightStartEndSimple extends StatelessWidget {
  Order order;
  FreightStartEndSimple({Key? key, required this.order}) : super(key: key);

  Widget _bookMark() {
    return SizedBox(
      width: 20,
      child: MaterialButton(
        //shape: const CircleBorder(),
        elevation: 0,
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        child: Image.asset('assets/images/bookmark_off.png', width: 20, height: 20,), //bookmark_off
        onPressed: () {},
      ),
    );
  }

  Widget _freightInfo(BuildContext context, {bool label=true}){
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              label ? Container(
                decoration: BoxDecoration(
                  color: const Color(0xff60acff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(2),
                child: const Text('상차', style: TextStyle(color: Colors.white, fontSize: 14),),
              ):const SizedBox(),
              const SizedBox(height: 4,),
              Row(
                children: [
                  Text('${toDayOrYYYYMM(order.loadingDateTime!)} ${DateFormat('HH:mm').format(order.loadingDateTime!)}', style: Theme.of(context).textTheme.caption,),
                  const SizedBox(width: 8,),
                  //Text('405km', style: Theme.of(context).textTheme.headline5, overflow: TextOverflow.ellipsis,),
                ],
              ),
              const SizedBox(height: 4,),
              Text(order.loadingAddress!, style: Theme.of(context).textTheme.bodyText1, overflow:TextOverflow.ellipsis),
            ],
          )
        ),
        Container(
          padding: const EdgeInsets.only(top:20),
          width: 34,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/two_arrow.png', width: 22, height: 22)
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              label ? Container(
                decoration: BoxDecoration(
                  color: const Color(0xff2a3f85),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(2),
                child: const Text('하차', style: TextStyle(color: Colors.white, fontSize: 14),),
              ):const SizedBox(),
              const SizedBox(height: 4,),
              Text('${toDayOrYYYYMM(order.unloadingDateTime!)} ${DateFormat('HH:mm').format(order.unloadingDateTime!)}', style: Theme.of(context).textTheme.caption,),
              const SizedBox(height: 4,),
              Text(order.unloadingAddress!, style: Theme.of(context).textTheme.bodyText1, overflow:TextOverflow.ellipsis),
            ],
          )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top:12, bottom: 12),
          child: Column(
            children: [
              _freightInfo(context), //상하차 시간, 주소
              line(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffeef4fb),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Text( //상하차방법
                          order.loadingFreightMethod!.substring(0,1)+' > ' + order.unloadingFreightMethod!.substring(0,1),
                          style: const TextStyle(color: Color(0xff2a3f85), fontSize: 12),
                        ),
                      ),
                      ...?(order.carOptions?.asMap().entries.map((e) { //차량옵션
                        return Row(
                          children: [
                            const SizedBox(width: 4,),
                            Text(e.value, style: Theme.of(context).textTheme.caption,),
                            const SizedBox(width: 4,),
                            e.key+1==(order.carOptions?.length) ?  const SizedBox(width: 0,) : Image.asset("assets/images/img_line_12.png"),
                          ],
                        );
                      }).toList()),
                    ],
                  ),
                  Row( //금액
                    children: [
                      Text(wonString(order.deliveryCharge), style: Theme.of(context).textTheme.headline6,),
                      Text(order.deliveryCharge!=null ? '원' : '', style: Theme.of(context).textTheme.caption,),
                    ],
                  )
                ],
              ),
            ]
          ),
        ),
        Positioned(
          top: -6,
          right: 6,
          child: _bookMark()
        )
      ],
    );
  }
}