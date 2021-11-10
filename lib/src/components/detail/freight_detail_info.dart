import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:lolab_freight_app/src/utils/dashed_line_vertical_painter.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

import 'freight_posion_map.dart';

class FreightDetailInfo extends StatelessWidget {
  Function(BuildContext) close;
  BuildContext parentContext;
  late Size size;

  FreightDetailInfo({Key? key, required this.close, required this.parentContext}) : super(key: key);

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

  Widget gotoMapBtn(BuildContext context){
    return SizedBox(
      width: 34,
      child: MaterialButton(
        elevation: 0,
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        child: const Icon(Icons.location_on_outlined, size: 34),
        onPressed: () => Navigator.pushNamed(context, 'detail/map'),
      ),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: size.height - 240,
          color: const Color(0xffedf0f5),
        ),
        Container(
          height: size.height - 240,
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
                const SizedBox(height: 20.0),
                freightContent(context),
                const SizedBox(height: 20.0),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))
                      ),
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                    ),
                    onPressed: () {},
                    child: const Text('배차요청'),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   child: SizedBox(
        //     height: 50,
        //     width: size.width-24,
        //     child: ElevatedButton(
        //       style: ElevatedButton.styleFrom(
        //         shape: const RoundedRectangleBorder(
        //             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))
        //         ),
        //         textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
        //       ),
        //       onPressed: () {},
        //       child: const Text('배차요청'),
        //     ),
        //   ),
        // ),
        Positioned(
          top: 50,
          right: 16,
          child: _bookMark()
        ),
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
                    //Navigator.of(context).pop();
                    close(parentContext);
                  },
                  //child: Icon(Icons.close, color: Colors.black, size: 42,),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 20.0,
                      //backgroundColor: Color(0x35ffffff),
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.close, color: Colors.black, size: 40,),
                    ),
                  ),
                )
              ],
            ),
          )
          
        ),
      ],
    );
  }

  Widget freightContent(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff60acff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(2),
                child: const Text('상차', style: TextStyle(color: Colors.white, fontSize: 14),),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Row(
                  children: [
                    Text('오늘 10:30 ', style: Theme.of(context).textTheme.caption,),
                    const Text('405km', style: TextStyle(color: Color(0xff600020), fontWeight: FontWeight.bold, fontSize: 14),),
                  ],
                )
              ),
              
            ],
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 80,
                child: Center(child: verticalLine()),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('서울 서초 강남대로 43길 강남빌딩 B동 102호', style: Theme.of(context).textTheme.headline3,),
                    line(),
                  ],
                )
              ),
              gotoMapBtn(context)
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff2a3f85),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(2),
                child: const Text('하차', style: TextStyle(color: Colors.white, fontSize: 14),),
              ),
              const SizedBox(width: 10,),
              Text('11/01 14:30', style: Theme.of(context).textTheme.caption,),
            ],
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 60,
              ),
              Expanded(
                child: Text('부산 해운대구 해운대로 213길 롯데빌딩 EAST 2308호', style: Theme.of(context).textTheme.headline3,)
              ),
              gotoMapBtn(context)
            ],
          ),
          const SizedBox(height: 10,),
          Container(
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
          ),
          const SizedBox(height: 12,),
          Container(
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
                      const Text('251,000', style: TextStyle(color: Colors.black, fontSize: 24)),
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
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return dialogContent(context);
  }
}
