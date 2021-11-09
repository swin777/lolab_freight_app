import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/freight_appbar.dart';
import 'package:lolab_freight_app/src/components/freight_card.dart';
import 'package:lolab_freight_app/src/components/detail/freight_detail_dialog.dart';
import 'package:lolab_freight_app/src/controller/home_controller.dart';

class Freight extends StatelessWidget {
  Freight({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(()=> Stack(
        children: [
          CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              SliverAppBar(
                flexibleSpace: FreightAppBar(),
                floating: true,
                snap: true,
                expandedHeight: 165,
                collapsedHeight: 165,
              ),
              SliverList( 
                delegate: SliverChildBuilderDelegate(
                  (context, index){
                    return GestureDetector(
                      onTap: () async{
                        await showDialog<String>(
                          barrierColor: const Color(0xcc606060),
                          context: context,
                          builder: (context) => FreightDetailDialog()
                        );
                      },
                      child: FreightCard(index:index))
                    ;
                  },
                  childCount: controller.cnt.value,
                ),
              ),
            ],
          ),
          new Positioned(
            bottom: 12,
            right: 8,
            child: Container(
              height: 50,
              child: new FloatingActionButton(
                onPressed: () {},
                child: new Icon(Icons.refresh),
              ),
            ),
          ),
        ],
      )
    ));
  }
}