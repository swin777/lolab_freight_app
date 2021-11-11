import 'package:flutter/material.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

class FreightCard extends StatelessWidget {
  int index;
  FreightCard({Key? key, required this.index}) : super(key: key);

  Widget _bookMark() {
    return SizedBox(
      width: 20,
      child: MaterialButton(
        //shape: const CircleBorder(),
        elevation: 0,
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        child: Image.asset('assets/images/bookmark_off.png', width: 20, height: 20,), //bookmark_off
        onPressed: () {},
      ),
    );
  }

  Widget _freightInfo(BuildContext context){
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 4,),
              Row(
                children: [
                  Text('오늘 10:30', style: Theme.of(context).textTheme.caption,),
                  SizedBox(width: 8,),
                  Text('405km', style: Theme.of(context).textTheme.headline5,),
                ],
              ),
              const SizedBox(height: 4,),
              Text('서울 서초 강남대로 43길 강남빌딩 B동 102호', style: Theme.of(context).textTheme.bodyText1, overflow:TextOverflow.ellipsis),
            ],
          )
        ),
        Container(
          padding: EdgeInsets.only(top:20),
          width: 34,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/two_arrow.png', width: 22, height: 22)
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 4,),
              Text('오늘 14:30', style: Theme.of(context).textTheme.caption,),
              const SizedBox(height: 4,),
              Text('부산 해운대구 해운대로 213길 롯데빌딩 EAST 2308호', style: Theme.of(context).textTheme.bodyText1, overflow:TextOverflow.ellipsis),
            ],
          )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 82) * 0.5;
    double width2 = width * 2 + 42;
    return Card(
      //color: index%2==0 ? Colors.white : Colors.grey[500],
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top:12, bottom: 12),
            child: Column(
              children: [
                _freightInfo(context),
                line(),
                Container(
                  width: width2,
                  child: Row(
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
                          Text('축차', style: Theme.of(context).textTheme.caption,),
                          const SizedBox(width: 4,),
                          Image.asset("assets/images/img_line_12.png"),
                          const SizedBox(width: 4,),
                          Text('리프트', style: Theme.of(context).textTheme.caption,),
                          const SizedBox(width: 4,),
                          Image.asset("assets/images/img_line_12.png"),
                          const SizedBox(width: 4,),
                          Text('냉장', style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                      Row(
                        children: [
                          Text('251,000', style: Theme.of(context).textTheme.headline6,),
                          Text('원', style: Theme.of(context).textTheme.caption,),
                        ],
                      )
                    ],
                  )
                ),
              ]
            ),
          ),
          Positioned(
            top: -6,
            right: 6,
            child: _bookMark()
          )
        ],
      ),
    );
  }
}