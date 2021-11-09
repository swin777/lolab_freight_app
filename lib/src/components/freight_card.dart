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
        child: const Icon(Icons.bookmark_border, size: 20),
        onPressed: () {},
      ),
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
                Row(
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
                          Text('오늘 10:30 405km', style: Theme.of(context).textTheme.caption,),
                          const SizedBox(height: 4,),
                          Text('서울 서초 강남대로', style: Theme.of(context).textTheme.bodyText1,),
                        ],
                      )
                    ),
                    const SizedBox(
                      width: 34,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blueGrey, size: 24,)
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
                          Text('부산 해운대 해운로', style: Theme.of(context).textTheme.bodyText1,),
                        ],
                      )
                    ),
                  ],
                ),
                line(),
                Container(
                  width: width2,
                  child: Text('10만원 | 수>지 | 축차, 리프트, 냉장', style: Theme.of(context).textTheme.bodyText2,)
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