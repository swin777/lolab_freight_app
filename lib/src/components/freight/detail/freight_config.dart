import 'package:flutter/material.dart';

class FreightConfigDialog extends StatelessWidget {
  FreightConfigDialog({Key? key}) : super(key: key);

  late Size size;

  void close(BuildContext context){
    Navigator.of(context).pop();
  }

  Widget dialogContent(BuildContext context){
    return Stack(
      children: <Widget>[
        Positioned(
          top: -5,
          child:Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            width: size.width-24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('화물 목록 설정', style: TextStyle(color: Colors.black, fontSize: 24)),
                GestureDetector(
                  onTap: () {
                    close(context);
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
          height: size.height - 100,
          margin: const EdgeInsets.only(top: 50.0, left: 12, right: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ExpansionTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('화물 상차 지역'),
                        Text('등록장소없음.'),
                      ],
                    ),
                    children: [
                      Column(
                        children: [
                          for (int i in [1,2,3,4,5])
                            ListTile(
                              title: Text("$i"),
                            )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                for (int i in [1,2,3,4,5,7,8,9,10,11,12,13,14,15])
                  
                  Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.red, height: 80, width:double.infinity, child: Center(child: Text("{$i}")),
                  ),
                
                
              ]
            ),
          ),
        ),
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Dialog(
      elevation: 0,
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: dialogContent(context)
    );
  }
}