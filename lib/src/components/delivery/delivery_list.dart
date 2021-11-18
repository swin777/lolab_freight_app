import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/controller/delivery_controller.dart';
import 'delivery_card.dart';
import 'detail/delivery_payment.dart';

class DeliveryList extends StatelessWidget {
  DeliveryList({ Key? key }) : super(key: key);

  final DeliveryController controller = DeliveryController.to;

  Future goFreightDetail(BuildContext context){
    return showDialog<String>(
      barrierColor: const Color(0xffedf0f5),
      context: context,
      builder: (context) => DeliveryPayment()
    );
  }
  Widget _appBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() => Text("배송 할 화물이 ${controller.cnt}건 있습니다.", style: const TextStyle(fontSize: 20, color: Colors.black))),
        IconButton(
          icon: Image.asset("assets/images/btn_money_24.png"),
          onPressed: () async{
            await goFreightDetail(context);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.videoLoad();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: CustomScrollView(controller: controller.scrollController, slivers: [
        SliverAppBar(
          flexibleSpace: _appBar(context),
          floating: true,
          snap: true,
        ),

        controller.cnt.value == 0
        ?
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/icon_nodata.png', width: 48, height: 48),
                const SizedBox(height: 8,),
                const Text('배송 화물이 없습니다.', style: TextStyle(color: Color(0xff999999), fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            ),
          ),
        )
        :
        SliverList( 
          delegate: SliverChildBuilderDelegate(
            (context, index){
              return GestureDetector(
                child: DeliveryCard(index:index)
              );
            },
            childCount: controller.cnt.value,
          ),
        )
      ]),
    );
  }
}