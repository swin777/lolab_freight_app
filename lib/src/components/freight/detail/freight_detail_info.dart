import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/components/freight/widget/freight_start_end.dart';
import 'package:lolab_freight_app/src/controller/freight_detail_controller.dart';
import 'package:lolab_freight_app/src/models/freight/order.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

class FreightDetailInfo extends StatelessWidget {
  FreightDetailInfo({Key? key, required this.close, required this.orderId}) : super(key: key);

  //FreightDetailController controller = FreightDetailController.to;
  FreightDetailController controller = Get.put(FreightDetailController());
  VoidCallback close;
  late Size size;
  String orderId;

  Widget _bookMark() {
    return SizedBox(
      width: 22,
      child: MaterialButton(
        //shape: const CircleBorder(),
        elevation: 0,
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        child: const Icon(Icons.bookmark_border, size: 20),
        onPressed: () {},
      ),
    );
  }

  // Widget _confirmDialog(BuildContext context) {
  //   return Dialog(
  //       elevation: 0,
  //       insetPadding: const EdgeInsets.all(0),
  //       //backgroundColor: Colors.transparent,
  //       //child:FreightDetailInfo(close: close, parentContext:context)
  //       child: Text("ssss"));
  // }

  String strPackagingList(List<PackagingList>? packagingList){
    if(packagingList!=null && packagingList.isNotEmpty){
      if(packagingList[0].packagingType=='팔레트'){
        return packagingList[0].freightLoadingCount.toString() + ' ' + packagingList[0].packagingType!;
      }else{
        return packagingList[0].freightLoadingCount.toString() + ' ' + packagingList[0].freightLoadingSize! +' ' + packagingList[0].packagingType!;
      } 
    }
    return "";
  }

  String strCarOption(List<String>? carOptions){
    if(carOptions!=null && carOptions.isNotEmpty){
      return carOptions.reduce((previousValue, element) => previousValue+', '+element);
    }
    return "";
  }

  Widget workMehod() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff2f4f7),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Obx(() => Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/icon_move.png",width: 24,height: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '상차 ${controller.order?.value.loadingFreightMethod} > 하차 ${controller.order?.value.unloadingFreightMethod}',
                  style: const TextStyle(color: Color(0xff666666), fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset("assets/images/icon_box.png",width: 24,height: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${strPackagingList(controller.order?.value.packagingLists)} / ${controller.order?.value.carModel}',
                  style: const TextStyle(color: Color(0xff666666), fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset("assets/images/icon_truck.png",width: 24,height: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  strCarOption(controller.order?.value.carOptions),
                  style: TextStyle(color: Color(0xff666666), fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset("assets/images/icon_memo.png",width: 24,height: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  controller.order?.value.otherFreightInfo??"",
                  style: const TextStyle(color: Color(0xff666666), fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ))
    );
  }

  Widget expense() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset("assets/images/icon_money_black_18.png",width: 18,height: 18),
            const SizedBox(width: 8,),
            const Padding(
              padding: EdgeInsets.only(top: 1),
              child: Text('배송요금', style: TextStyle(color: Colors.black, fontSize: 14))
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 3),
          child: Obx(() => Row(
              children: [
                Text(wonString(controller.order?.value.deliveryCharge), style: const TextStyle(color: Colors.black, fontSize: 24)),
                const SizedBox(width: 2),
                Text(controller.order?.value.deliveryCharge!=null ? '원' : '', style: const TextStyle(color: Colors.black, fontSize: 18)),
              ],
            )
          )
        )
      ],
    );
  }

  Widget requestBtn() {
    return SizedBox(
      height: 48,
      width: size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          controller.reqStatusToggle();
          controller.startTimeout();
        },
        child: const Text('배차요청'),
      ),
    );
  }

  Widget decisionBtn() {
    return Column(
      children: [
        SizedBox(
          height: 48,
          width: size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  side: BorderSide(color: Color(0xff005e35))),
              primary: Colors.white,
            ),
            onPressed: () {
              controller.reqStatusToggle();
            },
            child: const Text(
              '담당자와 통화',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff005e35)),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 48,
          child: Stack(children: [
            Container(
              width: size.width,
              decoration: BoxDecoration(
                  color: const Color(0xff005e35),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 0.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ]),
            ),
            Container(
              alignment: Alignment.centerRight,
              width: size.width,
              child: Obx(() => Container(
                    width: (size.width - 48) * controller.timeRate.value,
                    decoration: BoxDecoration(
                      color: const Color(0xff60acff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  )),
            ),
            Center(
                child: Obx(() => Text(
                      '배차결정 ${controller.timeStr.value}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))),
          ]),
        ),
      ],
    );
  }

  Widget freightContent(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() {
              return controller.order!.value.orderId != null
                  ? FreightStartEnd(order: controller.order!.value)
                  : const SizedBox();
            }),
            workMehod(),
            expense(),
            const SizedBox(
              height: 12,
            ),
            Obx(() =>
                !controller.reqStatus.value ? requestBtn() : decisionBtn())

            // const SizedBox(height: 16,),

            // line(),
            // FreightStartEnd(),
            // workMehod(context),
            // expense(context),
            // const SizedBox(height: 12,),
            // requestBtn(context),
            // const SizedBox(height: 6,),
          ],
        ));
  }

  Widget dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: -5,
            //right: 8.0,
            child: Container(
              margin: const EdgeInsets.only(left: 12, right: 12, top: 20),
              width: size.width - 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('화물상세정보',
                      style: TextStyle(color: Colors.black, fontSize: 24)),
                  GestureDetector(
                    onTap: () {
                      close();
                    },
                    child: const Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
        Container(
          margin: const EdgeInsets.only(
            top: 70.0,
            left: 12,
            right: 12,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 0.0,
                  offset: Offset(0.0, 0.0),
                ),
              ]),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                freightContent(context),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
        Positioned(top: 70, right: 16, child: _bookMark()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.getOrder(orderId);
    size = MediaQuery.of(context).size;
    return dialogContent(context);
  }
}
