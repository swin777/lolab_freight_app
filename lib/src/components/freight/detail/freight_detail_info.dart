import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/components/freight/widget/freight_start_end.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

class FreightDetailInfo extends StatelessWidget {
  VoidCallback close;
  late Size size;

  FreightDetailInfo({Key? key, required this.close}) : super(key: key);

  Widget _bookMark() {
    return SizedBox(
      width: 22,
      child: MaterialButton(
        //shape: const CircleBorder(),
        elevation: 0,
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        child: const Icon(Icons.bookmark_border, size: 20),
        onPressed: () {
        },
      ),
    );
  }

  Widget _confirmDialog(BuildContext context){
    return Dialog(
      elevation: 0,
      insetPadding: const EdgeInsets.all(0),
      //backgroundColor: Colors.transparent,
      //child:FreightDetailInfo(close: close, parentContext:context)
      child: Text("ssss")
    );
  }

  Widget workMehod(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff2f4f7),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/icon_move.png", width: 24, height: 24,),
              const SizedBox(width: 8,),
              Expanded(
                child: const Text('상차 수작업 > 하차 지계차', style: TextStyle(color: Color(0xff666666), fontSize: 16),),
              ),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            children: [
              Image.asset("assets/images/icon_box.png", width: 24, height: 24,),
              const SizedBox(width: 8,),
              Expanded(
                child: const Text('4파레트 / 2.5톤', style: TextStyle(color: Color(0xff666666), fontSize: 16),),
              ),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            children: [
              Image.asset("assets/images/icon_truck.png", width: 24, height: 24,),
              const SizedBox(width: 8,),
              Expanded(
                child: const Text('5톤/윙카, 축차, 리프트, 냉장', style: TextStyle(color: Color(0xff666666), fontSize: 16),),
              ),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            children: [
              Image.asset("assets/images/icon_memo.png", width: 24, height: 24,),
              const SizedBox(width: 8,),
              Expanded(
                child: const Text('배송 일정 협의 필요합니다. 연락바랍니다.\n상차지주변에 공사중입니다. 조심하시라는 입장.',
                  style: TextStyle(color: Color(0xff666666), fontSize: 16),),
              ),
            ],
          ),
        ],
      )
    );
  }

  Widget expense(BuildContext context){
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Image.asset("assets/images/icon_money_black_18.png", width: 18, height: 18,),
            const SizedBox(width: 8,),
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: const Text('배송요금', style: TextStyle(color: Colors.black, fontSize: 14))
            ),
          ],),
          Container(
            padding: EdgeInsets.only(top: 3),
            child: Row(
              children: [
                const Text('250,000', style: TextStyle(color: Colors.black, fontSize: 24)),
                const SizedBox(width: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: const Text('원', style: TextStyle(color: Colors.black, fontSize: 18)),
                ),
              ],
            )
          )
        ],
      ),
    );
  }

  Widget requestBtn(BuildContext context){
    return Container(
      height: 48,
      width: size.width - 10,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))
          ),
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
        ),
        onPressed: () async{
          await showDialog<String>(
            context: context,
            builder: (context) => _confirmDialog(context)
          );
        },
        child: const Text('배차요청'),
      ),
    );
  }

  Widget freightContent(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          FreightStartEnd(),
          workMehod(context),
          expense(context),
          const SizedBox(height: 12,),
          requestBtn(context),

          // const SizedBox(height: 16,),

          // line(),
          // FreightStartEnd(),
          // workMehod(context),
          // expense(context),
          // const SizedBox(height: 12,),
          // requestBtn(context),
          // const SizedBox(height: 6,),
        ],
      )
    );
  }

  Widget dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -5,
          //right: 8.0,
          child:Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            width: size.width-24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('화물상세정보', style: TextStyle(color: Colors.black, fontSize: 24)),
                GestureDetector(
                  onTap: () {
                    close();
                  },
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.close, color: Colors.black, size: 40,),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
        Container(
          margin: const EdgeInsets.only(top: 50.0, left: 12, right: 12),
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
            ]
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 10,),
                freightContent(context),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 16,
          child: _bookMark()
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return dialogContent(context);
  }
}
