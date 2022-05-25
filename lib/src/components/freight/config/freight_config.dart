import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/utils/util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FreightConfig extends StatefulWidget {
  FreightConfig({Key? key, required this.close}) : super(key: key);

  VoidCallback close;

  @override
  State<FreightConfig> createState() => _FreightConfigState();
}

class _FreightConfigState extends State<FreightConfig> {
  late Size size;
  String _loadingArea = '';
  String _dropOffArea = '';
  bool _isDateSort = false;
  List<String> _carOption = [];
  int _minDistance = 0;
  int _maxDistance = 0;
  int _price = 0;
  bool _isHandWorkExcept = false;

  //위젯이 생성될 때 처음으로 호출되고, 단 한번만 호출된다.
  @override
  void initState() {
    super.initState(); // initState()를 사용할 때 반드시 사용해야 한다.
    _loadInitSharedPreference(); // 이 함수를 실행한다.
  }

  //캐시에 있는 데이터를 불러오는 함수
  //이 함수의 기능으로, 어플을 끄고 켜도 데이터가 유지된다.
  _loadInitSharedPreference() async {
    SharedPreferences _prefs =
        await SharedPreferences.getInstance(); // 캐시에 저장되어있는 값을 불러온다.
    setState(() {
      // 캐시에 저장된 값을 반영하여 현재 상태를 설정한다.
      // SharedPreferences에 id, pw로 저장된 값을 읽어 필드에 저장. 없을 경우 0으로 대입
      _minDistance = (_prefs.getInt('minDistance') ?? 0);
      _maxDistance = (_prefs.getInt('maxDistance') ?? 0);
      _isDateSort = (_prefs.getBool('isDateSort') ?? false);
      _isHandWorkExcept = (_prefs.getBool('isHandWorkExcept') ?? false);
    });
  }

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
                    widget.close();
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
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    double width = MediaQuery.of(context).size.width;
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
              child: Theme(
                //new
                data: theme, //new
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
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff666666)),
                      ),
                    ],
                  ),
                  children: [
                    lineBottom(),
                    Column(
                      children: [
                        OutlinedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 100)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff005e35)),
                              side: MaterialStateProperty.all(BorderSide(
                                width: 1.0,
                                color: Color(0xff005e35),
                                style: BorderStyle.solid,
                              ))),
                          onPressed: () {
                            Get.toNamed("config/areaSelect", id: 2);
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
            ),
          SizedBox(
            height: 8,
          ),
          DateWidget(context),
          OptionContent(context),
          ScrollContent(context),
          PriceContent(context),
          HandWorkWidget(context),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: OutlinedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 130)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff000000)),
                  side: MaterialStateProperty.all(BorderSide(
                    width: 1.0,
                    color: Color(0xffcccccc),
                    style: BorderStyle.solid,
                  ))),
              onPressed: () {},
              child: Text('설정 초기화',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
        ]),
      ),
    );
  }

  Widget ScrollContent(BuildContext context) {
    final _maxList = [100, 150, 200, 250, 300, 350, 400, 450, 500];
    final _minList = [5, 10, 15, 20, 25, 30];

    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Container(
      // height: size.height,
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
            child: Theme(
              //new
              data: theme, //new
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
                  line(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Stack(children: <Widget>[
                            Positioned(
                              top: 40,
                              left: 20,
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 40,
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
                                            color: Color(0xff005e35),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20)),
                                  ),
                                  child: CupertinoPicker(
                                    children: _minList
                                        .map((e) => Text('$e'))
                                        .toList(),
                                    itemExtent: 30,
                                    // selectionOverlay:
                                    //     CupertinoPickerDefaultSelectionOverlay(
                                    //   background: Color(0x33f4f6f9),
                                    //   // background: Colors.red.withOpacity(0.8),
                                    // ),
                                    scrollController:
                                        FixedExtentScrollController(
                                            initialItem:
                                                _minList.indexOf(_minDistance)),
                                    // onSelectedItemChanged: (int value) {},
                                    onSelectedItemChanged: (int index) {
                                      setState(() {
                                        _minDistance = _minList[index];
                                      });
                                    },
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
                                width:
                                    MediaQuery.of(context).size.width / 2 - 40,
                                height: 100,
                                child: Text('최대               km'),
                              ),
                            ),
                            SizedBox(
                                height: 100,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 40,
                                child: CupertinoTheme(
                                    data: CupertinoThemeData(
                                      textTheme: CupertinoTextThemeData(
                                          pickerTextStyle: TextStyle(
                                              color: Color(0xff005e35),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20)),
                                    ),
                                    child: CupertinoPicker(
                                      children: _maxList
                                          .map((e) => Text('$e'))
                                          .toList(),
                                      itemExtent: 30,
                                      scrollController:
                                          FixedExtentScrollController(
                                              initialItem: _maxList
                                                  .indexOf(_maxDistance)),
                                      onSelectedItemChanged: (int index) {
                                        print(_maxList[index]);
                                        setState(() {
                                          _maxDistance = _maxList[index];
                                        });
                                      },
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
                                Color(0xff005e35)),
                            side: MaterialStateProperty.all(BorderSide(
                              width: 1.0,
                              color: Color(0xff005e35),
                              style: BorderStyle.solid,
                            ))),
                        onPressed: () {
                          _setDistance(_minDistance, _maxDistance);
                        },
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
          ),
        ]),
      ),
    );
  }

  _setDistance(min, max) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('minDistance', _minDistance);
    await prefs.setInt('maxDistance', _maxDistance);
  }

  @override
  Widget build(BuildContext context) {
    print('config build call');
    size = MediaQuery.of(context).size;
    return dialogContent(context);
    // return Dialog(
    //     elevation: 0,
    //     insetPadding: const EdgeInsets.all(0),
    //     backgroundColor: Colors.transparent,
    //     child: dialogContent(context));
  }

  Widget DateWidget(BuildContext context) {
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
            value: _isDateSort,
            onChanged: (value) {
              setState(() {
                _isDateSort = value;
              });
              _setBool('isDateSort', value);
            },
          ),
        ],
      ),
    );
  }

  _setBool(key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  Widget HandWorkWidget(BuildContext context) {
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
                "수작업 적재 화물 제외",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xff000000)),
              ),
            ],
          ),
          CupertinoSwitch(
            value: _isHandWorkExcept,
            onChanged: (value) {
              setState(() {
                _isHandWorkExcept = value;
              });
              _setBool('isHandWorkExcept', value);
            },
          ),
        ],
      ),
    );
  }
}

Widget PriceContent(BuildContext context) {
  final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

  return Container(
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
          child: Theme(
            //new
            data: theme,
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
                lineBottom(),
                Column(
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 100)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff005e35)),
                          side: MaterialStateProperty.all(BorderSide(
                            width: 1.0,
                            color: Color(0xff005e35),
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
        ),
      ]),
    ),
  );
}

Widget OptionContent(BuildContext context) {
  final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

  return Container(
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
          child: Theme(
            //new
            data: theme,
            child: ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "내 차량 옵션",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xff000000)),
                  ),
                  Text(
                    '모든 옵션 적용',
                    style: TextStyle(fontSize: 14, color: Color(0xff666666)),
                  ),
                ],
              ),
              children: [
                line(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme(
                            minWidth: 69.0,
                            height: 34.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: new Text(
                                "25톤",
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff005e35),
                                ),
                              ),
                              // borderSide: BorderSide(
                              //   color: Color(0xff005e35),
                              //   width: 1.0,
                              // ),
                              // shape: StadiumBorder(),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 69.0,
                            height: 34.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: new Text(
                                "카고",
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff005e35),
                                ),
                              ),
                              // borderSide: BorderSide(
                              //   color: Color(0xff005e35),
                              //   width: 1.0,
                              // ),
                              // shape: StadiumBorder(),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 69.0,
                            height: 34.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: new Text(
                                "축차",
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff005e35),
                                ),
                              ),
                              // borderSide: BorderSide(
                              //   color: Color(0xff005e35),
                              //   width: 1.0,
                              // ),
                              // shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme(
                            minWidth: 69.0,
                            height: 34.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: new Text(
                                "무진동",
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff005e35),
                                ),
                              ),
                              // borderSide: BorderSide(
                              //   color: Color(0xff005e35),
                              //   width: 1.0,
                              // ),
                              // shape: StadiumBorder(),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 69.0,
                            height: 34.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: new Text(
                                "리프트",
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff005e35),
                                ),
                              ),
                              // borderSide: BorderSide(
                              //   color: Color(0xff005e35),
                              //   width: 1.0,
                              // ),
                              // shape: StadiumBorder(),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 69.0,
                            height: 34.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: new Text(
                                "냉장",
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff005e35),
                                ),
                              ),
                              // borderSide: BorderSide(
                              //   color: Color(0xff005e35),
                              //   width: 1.0,
                              // ),
                              // shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 69.0,
                            height: 34.0,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: new Text(
                                "냉동",
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff005e35),
                                ),
                              ),
                              // borderSide: BorderSide(
                              //   color: Color(0xff005e35),
                              //   width: 1.0,
                              // ),
                              // shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    ),
  );
}
