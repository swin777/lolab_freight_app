import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/freight/config/freight_config_main.dart';
import 'package:lolab_freight_app/src/components/freight/freight_appbar.dart';
import 'package:lolab_freight_app/src/components/freight/freight_card.dart';
import 'package:lolab_freight_app/src/components/freight/detail/freight_detail.dart';
import 'package:lolab_freight_app/src/controller/freight_controller.dart';

class Freight extends StatelessWidget {
  Freight({Key? key}) : super(key: key);

  //final FreightController controller = FreightController.to;
  final FreightController controller = Get.put(FreightController());

  Future goConfig(BuildContext context){
    return showDialog<String>(
      barrierColor: const Color(0xffedf0f5),
      context: context,
      builder: (context) => FreightConfigMain()
    );
  }

  Future goFreightDetail(BuildContext context, String? orderId){
    return showDialog<String>(
      barrierColor: const Color(0xffedf0f5),
      context: context,
      builder: (context) => FreightDetail(orderId:orderId!)
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.getOrderList();
    return SafeArea(
      child: Obx(()=> Stack(
        children: [
          RefreshIndicator(
            child: CustomScrollView(
              controller: controller.scrollController,
              slivers: [
                SliverAppBar(
                  flexibleSpace: FreightAppBar(configCallback:goConfig),
                  floating: true,
                  snap: true,
                  expandedHeight: 173,
                  collapsedHeight: 173,
                ),
                controller.orderList!.value.orders!.isEmpty 
                ?
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height/2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/icon_nodata.png', width: 48, height: 48),
                        const SizedBox(height: 8,),
                        const Text('배송 가능한 화물이 없습니다.', style: TextStyle(color: Color(0xff999999), fontWeight: FontWeight.bold, fontSize: 16),),
                      ],
                    ),
                  ),
                )
                :
                SliverList( 
                  delegate: SliverChildBuilderDelegate(
                    (context, index){
                      return GestureDetector(
                        onTap: () async{
                          await goFreightDetail(context, controller.orderList!.value.orders![index].orderId);
                        },
                        child: FreightCard(index:index, order:controller.orderList!.value.orders![index])
                      );
                    },
                    childCount: controller.orderList!.value.orders!.length
                  ),
                )
              ],
            ),
            onRefresh: () => Future.microtask(() => controller.getOrderList())
          ),
          Positioned(
            bottom: 8,
            right: 0,
            child: SizedBox(
              height: 50,
              child: MaterialButton(
                onPressed: () => controller.getOrderList(),
                child: Image.asset("assets/images/btn_floating_refresh.png")
              ),
            ),
          ),
        ],
      )
    ));
  }
}