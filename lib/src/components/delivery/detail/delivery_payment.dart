import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/monthSelect/month_select.dart';

class DeliveryPayment extends StatelessWidget {
  const DeliveryPayment({ Key? key }) : super(key: key);

  Widget _topArea(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.only(topLeft:Radius.circular(12), topRight: Radius.circular(12)),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 0.0,
            offset: Offset(0.0, 0.0),
          ),
        ]
      ),
      height: 306,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("배송료 정산내역", style: TextStyle(fontSize: 20, color: Colors.white)),
              IconButton(
                icon: Icon(Icons.close, color: Colors.white, size: 40,),
                onPressed: (){
                  Get.back();
                },
              ),
            ],
          ),
          MonthSelect()
        ],
      ),
    );
  }

  Widget _listArea(){
    return Container(
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: Column(children: [
          _topArea(context),
          _listArea()
        ],
      )
    );
  }
}