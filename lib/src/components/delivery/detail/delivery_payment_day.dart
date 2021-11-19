import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lolab_freight_app/src/components/freight/widget/freight_start_end.dart';
import 'package:lolab_freight_app/src/components/freight/widget/freight_start_end_simple.dart';
import 'package:lolab_freight_app/src/controller/delivery_payment_controller.dart';

class DeliveryPaymentDay extends StatelessWidget {
  DeliveryPaymentDay({Key? key, required this.close}) : super(key: key);
  final DeliveryPaymentController controller = Get.find<DeliveryPaymentController>();
  NumberFormat f = NumberFormat('###,###,###,###');

  VoidCallback close;

  Widget _top(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, size: 40),
          onPressed: () => Get.back()
        ),
        const SizedBox(width: 14,),
        const Expanded(
          child: Align(
            child: Text("11월22일", style: TextStyle(fontSize: 20, color: Colors.black, height: 1.8)),
            alignment: Alignment.centerLeft,
          )
        ),
        IconButton(
          icon: const Icon(Icons.close, size: 40),
          onPressed: () => close()
        ),
      ],
    );
  }

  Widget _summary(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("배송 화물 ", style: TextStyle(color: Color(0xff666666), fontSize: 16),),
        Text(f.format(controller.dayCnt.value), style: const TextStyle(color: Color(0xff2a3f85), fontSize: 16),),
        const Text("건", style: TextStyle(color: Color(0xff666666), fontSize: 16),),
        const SizedBox(width: 4,),
        Image.asset("assets/images/img_line_12.png"),
        const SizedBox(width: 4,),
        const Text("정산금액  ", style: TextStyle(color: Color(0xff666666), fontSize: 16),),
        Text(f.format(780000), style: const TextStyle(color: Color(0xff2a3f85), fontSize: 16),),
        const Text("원", style: TextStyle(color: Color(0xff666666), fontSize: 16, height: 1.3),),
      ],
    );
  }

  Widget _incomeInfo(){
    return Expanded(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            margin: EdgeInsets.only(left: 10, bottom: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 12, top: 12, bottom: 6, right: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xfff2f4f7),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  height: 34,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/icon_time_16.png", width: 16, height: 16,),
                      SizedBox(width: 4,),
                      Text("11월 25일", style: TextStyle(color: Color(0xff000000), fontSize: 14),),
                      SizedBox(width: 4,),
                      Text("입금완료", style: TextStyle(color: Color(0xfff82b04), fontSize: 14),),
                    ],
                  ),
                ),
                FreightStartEndSimple(),
              ],
            ),
          );
        },
        itemCount: controller.dayCnt.value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      insetPadding: const EdgeInsets.only(left: 0, top: 10, bottom: 10, right: 10),
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
          _top(),
          const SizedBox(height: 14,),
          _summary(),
          const SizedBox(height: 14,),
          _incomeInfo()
        ],
      )
    );
  }
}