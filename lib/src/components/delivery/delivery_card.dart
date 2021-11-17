import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/components/freight/widget/freight_start_end.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

class DeliveryCard extends StatelessWidget {
  int index;
  late ThemeData themeData;
  DeliveryCard({ Key? key, required this.index }) : super(key: key);

  Widget _button({required String text, required Function fun, Color? primaryColor, Color? fontColor, Color? borderColor}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor!=null ? primaryColor : themeData.primaryColor ,
          fixedSize: Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            side: BorderSide(color: borderColor!=null ? borderColor : themeData.primaryColor, width: 1.0)
          ),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          elevation: 0
        ),
        onPressed: () => fun,
        child: Text(text, style: TextStyle(color: fontColor!=null ? fontColor : Colors.white),),
      ),
    );
  }

  Widget _workAndPrice(BuildContext context){
    return Row(
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
              child: const Text('수 > 지', style: TextStyle(color: Color(0xff2a3f85), fontSize: 12),),
            ),
            const SizedBox(width: 4,),
            Text('축차', style: themeData.textTheme.caption,),
            const SizedBox(width: 4,),
            Image.asset("assets/images/img_line_12.png"),
            const SizedBox(width: 4,),
            Text('리프트', style: themeData.textTheme.caption,),
            const SizedBox(width: 4,),
            Image.asset("assets/images/img_line_12.png"),
            const SizedBox(width: 4,),
            Text('냉장', style: themeData.textTheme.caption,),
          ],
        ),
        Row(
          children: [
            Text('250,000', style: themeData.textTheme.headline6,),
            Text('원', style: themeData.textTheme.caption,),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FreightStartEnd(),
            line(),
            const SizedBox(height: 10,),
            _workAndPrice(context),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _button(text:'배차 취소 요청', 
                    primaryColor: Colors.white, fontColor: Colors.black, borderColor: const Color(0xff979797),
                    fun:(){}
                  )
                ),
                Expanded(
                  child: _button(text:'상차지 전화 통화', 
                    primaryColor: Colors.white, fontColor: themeData.primaryColor,
                    fun:(){}
                  )
                ),
              ],
            ),
            _button(text:'화물 상차 완료 확인', fun:(){}),
          ],
        ),
      ),
    );
  }
}