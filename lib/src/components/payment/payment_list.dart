import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lolab_freight_app/src/components/monthSelect/month_select.dart';
import 'package:lolab_freight_app/src/components/payment/payment_day.dart';
import 'package:lolab_freight_app/src/controller/delivery_payment_controller.dart';

class PaymentList extends StatelessWidget {
  PaymentList({ Key? key }) : super(key: key);
  final PaymentController controller = Get.put(PaymentController());
  NumberFormat f = NumberFormat('###,###,###,###');
  int selectYear = DateTime.now().year;

  void close(){
    Get.back();
    //Get.back();
  }

  Future goPaymentDay(BuildContext context){
    return showDialog<String>(
      barrierColor: const Color(0xffedf0f5),
      context: context,
      builder: (context) => PaymentDay(close: close)
    );
  }

  Widget _yearSelect(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: Colors.white,),
          onPressed: () {}
        ),
        Text(selectYear.toString(), style: TextStyle(fontSize: 20, color: Colors.white)),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.white,),
          onPressed: () {}
        ),
      ],
    );
  } //icon_money_w_18

  Widget _totalMoneyInfo(){
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/icon_money_w_18.png"),
              const SizedBox(width: 8,),
              Text(f.format(12240000), style: TextStyle(fontSize: 30, color: Colors.white)),
              Container(
                padding: EdgeInsets.only(top: 6, left: 4),
                child: Text("원", style: TextStyle(fontSize: 20, color: Colors.white))
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Text("케이뱅크 : 1234-5678-9091", style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.5))),
        ],
      ),
    );
  }

  Widget _topArea(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.rectangle,
        //borderRadius: const BorderRadius.only(topLeft:Radius.circular(12), topRight: Radius.circular(12)),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("배송료 정산내역", style: TextStyle(fontSize: 20, color: Colors.white)),
              // IconButton(
              //   icon: const Icon(Icons.close, color: Colors.white, size: 40,),
              //   onPressed: (){
              //     Get.back();
              //   },
              // ),
            ],
          ),
          _yearSelect(),
          MonthSelect(),
          _totalMoneyInfo()
        ],
      ),
    );
  }

  Widget _listArea(){
    return Expanded(
      child: ListView.separated(
        itemCount: controller.cnt.value,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: () async{
                await goPaymentDay(context);
              },
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${index+1} 일', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("완료2건", style: TextStyle(fontSize: 14, color: Color(0xff666666))),
                        Row(
                          children: [
                            Text(f.format(780000), style: TextStyle(fontSize: 16, color: Color(0xff005e35), fontWeight: FontWeight.w500)),
                            Text("원", style: TextStyle(fontSize: 14, color: Color(0xff005e35), fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 18,)
              ),
              
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.search();
    // return Dialog(
    //   elevation: 0,
    //   insetPadding: const EdgeInsets.all(0),
    //   backgroundColor: Colors.transparent,
    //   child: Column(children: [
    //       _topArea(context),
    //       _listArea()
    //     ],
    //   )
    // );
    return Container(
      color:Colors.white,
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _topArea(context),
          _listArea()
        ],
      )
    );
  }
}