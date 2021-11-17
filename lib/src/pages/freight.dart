import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/freight/config/freight_config_main.dart';
import 'package:lolab_freight_app/src/components/freight/freight_appbar.dart';
import 'package:lolab_freight_app/src/components/freight/freight_card.dart';
import 'package:lolab_freight_app/src/components/freight/detail/freight_detail_dialog.dart';
import 'package:lolab_freight_app/src/controller/freight_controller.dart';

class Freight extends StatelessWidget {
  Freight({Key? key}) : super(key: key);

  final FreightController controller = FreightController.to;

  Future goConfig(BuildContext context){
    return showDialog<String>(
      barrierColor: const Color(0xffedf0f5),
      context: context,
      builder: (context) => FreightConfigMain()
    );
  }

  Future goFreightDetail(BuildContext context){
    return showDialog<String>(
      barrierColor: const Color(0xffedf0f5),
      context: context,
      builder: (context) => FreightDetailDialog()
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(()=> Stack(
        children: [
          CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              SliverAppBar(
                flexibleSpace: FreightAppBar(configCallback:goConfig),
                floating: true,
                snap: true,
                expandedHeight: 170,
                collapsedHeight: 170,
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
                        await goFreightDetail(context);
                      },
                      child: FreightCard(index:index)
                    );
                  },
                  childCount: controller.cnt.value,
                ),
              )
            ],
          ),
          Positioned(
            bottom: 8,
            right: 0,
            child: SizedBox(
              height: 50,
              child: MaterialButton(
                onPressed: () {},
                child: Image.asset("assets/images/btn_floating_refresh.png")
              ),
            ),
          ),
        ],
      )
    ));
  }
}