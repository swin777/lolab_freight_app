import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FreightConfig extends StatelessWidget {
  FreightConfig({Key? key, required this.close}) : super(key: key);

  late Size size;
  VoidCallback close;

  Widget dialogContent(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(children: <Widget>[
      Positioned(
          top: -5,
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            width: size.width - 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('화물 목록 설정',
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
                ),
              ],
            ),
          )),
      LocationContent(context),
    ]);
  }

  Widget LocationContent(BuildContext context) {
    return Container(
      height: size.height - 100,
      margin: const EdgeInsets.only(top: 50.0, left: 12, right: 12),
      child: SingleChildScrollView(
        child: Column(children: [
          for (String str in ['화물 상차 지역', '화물 하차 지역'])
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ExpansionTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${str}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      '등록 장소 없음',
                      style: TextStyle(fontSize: 14, color: Color(0xff666666)),
                    ),
                  ],
                ),
                children: [
                  Column(
                    children: [
                      OutlinedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 100)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff2a3f85)),
                            side: MaterialStateProperty.all(BorderSide(
                              width: 1.0,
                              color: Color(0xff2a3f85),
                              style: BorderStyle.solid,
                            ))),
                        onPressed: () {
                          Get.toNamed("config/areaSelect", id:2);
                        },
                        child: Text('+ 지역 추가',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          SizedBox(
            height: 8,
          ),
          DateWidget(context: context),
          ScrollContent(context),
          for (int i in [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15])
            Container(
              margin: EdgeInsets.all(4),
              color: Colors.red,
              height: 80,
              width: double.infinity,
              child: Center(child: Text("{$i}")),
            ),
        ]),
      ),
    );
  }

  Widget ScrollContent(BuildContext context) {
    return Container(
      height: size.height - 100,
      // margin: const EdgeInsets.only(top: 50.0, left: 12, right: 12),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "배송 거리",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xff000000)),
                  ),
                  Text(
                    '거리 제한 없음',
                    style: TextStyle(fontSize: 14, color: Color(0xff666666)),
                  ),
                ],
              ),
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Stack(children: <Widget>[
                          Positioned(
                            top: 40,
                            left: 20,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              height: 100,
                              child: Text('최소               km'),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 2 - 40,
                            child: CupertinoTheme(
                                data: CupertinoThemeData(
                                  textTheme: CupertinoTextThemeData(
                                      pickerTextStyle: TextStyle(
                                          color: Color(0xff2a3f85),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20)),
                                ),
                                child: CupertinoPicker(
                                  children: [5, 10, 15, 20, 25, 30]
                                      .map((e) => Text('$e'))
                                      .toList(),
                                  itemExtent: 30,
                                  // selectionOverlay:
                                  //     CupertinoPickerDefaultSelectionOverlay(
                                  //   background: Color(0x33f4f6f9),
                                  //   // background: Colors.red.withOpacity(0.8),
                                  // ),
                                  // scrollController:
                                  //     FixedExtentScrollController(initialItem: _result),
                                  onSelectedItemChanged: (int value) {},
                                  // onSelectedItemChanged: (int index) {
                                  //   setState(() {
                                  //     _result = _itemList[index];
                                  //   });
                                  // },
                                )),
                          )
                        ]),
                        Container(
                          child: Text('~'),
                        ),
                        Stack(children: <Widget>[
                          Positioned(
                            top: 40,
                            left: 20,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              height: 100,
                              child: Text('최대               km'),
                            ),
                          ),
                          SizedBox(
                              height: 100,
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              child: CupertinoTheme(
                                  data: CupertinoThemeData(
                                    textTheme: CupertinoTextThemeData(
                                        pickerTextStyle: TextStyle(
                                            color: Color(0xff2a3f85),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20)),
                                  ),
                                  child: CupertinoPicker(
                                    children: [
                                      100,
                                      150,
                                      200,
                                      250,
                                      300,
                                      350,
                                      400,
                                      450,
                                      500
                                    ].map((e) => Text('$e')).toList(),
                                    itemExtent: 30,
                                    // scrollController:
                                    //     FixedExtentScrollController(initialItem: _result),
                                    onSelectedItemChanged: (int value) {},
                                    // onSelectedItemChanged: (int index) {
                                    //   setState(() {
                                    //     _result = _itemList[index];
                                    //   });
                                    // },
                                  )))
                        ])
                      ],
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 100)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff2a3f85)),
                          side: MaterialStateProperty.all(BorderSide(
                            width: 1.0,
                            color: Color(0xff2a3f85),
                            style: BorderStyle.solid,
                          ))),
                      onPressed: () {},
                      child: Text('설정하기',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return dialogContent(context);
    // return Dialog(
    //     elevation: 0,
    //     insetPadding: const EdgeInsets.all(0),
    //     backgroundColor: Colors.transparent,
    //     child: dialogContent(context));
  }
}

Widget PriceContent(BuildContext context) {
  return Container(
    //height: size.height - 100,
    // margin: const EdgeInsets.only(top: 50.0, left: 12, right: 12),
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "최소 배송 요금",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xff000000)),
                ),
                Text(
                  '요금 제한 없음',
                  style: TextStyle(fontSize: 14, color: Color(0xff666666)),
                ),
              ],
            ),
            children: [
              Column(
                children: [
                  OutlinedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 100)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff2a3f85)),
                        side: MaterialStateProperty.all(BorderSide(
                          width: 1.0,
                          color: Color(0xff2a3f85),
                          style: BorderStyle.solid,
                        ))),
                    onPressed: () {},
                    child: Text('최소 요금 설정',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    ),
  );
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    bool _switchValue = true;

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "날짜 별 화물 목록 보기",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xff000000)),
              ),
              Text(
                '화물 상차일 기준',
                style: TextStyle(fontSize: 14, color: Color(0xff666666)),
              ),
            ],
          ),
          CupertinoSwitch(
            value: _switchValue,
            onChanged: (value) {
              // setState(() {
              //   _switchValue = value;
              // });
            },
          ),
        ],
      ),
    );
  }
}
