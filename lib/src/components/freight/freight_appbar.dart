import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lolab_freight_app/src/utils/util.dart';

import '../customAdvancedCalendar/controller.dart';
import '../customAdvancedCalendar/widget.dart';
import 'package:lolab_freight_app/src/controller/freight_controller.dart';

class FreightAppBar extends StatelessWidget {
  FreightAppBar({required this.configCallback});

  final FreightController controller = FreightController.to;
  final List<DateTime> events = [
    //DateTime.utc(2021, 08, 10, 12),
    //DateTime.utc(2021, 08, 11, 12)
  ];

  Function configCallback;

  List<Map<String, dynamic>> themaList = [
    {"name": "축차", "icon": Icon(Icons.add_box, size: 18)},
    {"name": "무진동", "icon": Icon(Icons.food_bank, size: 18)},
    {"name": "리프트", "icon": Icon(Icons.add_box, size: 18)},
    {"name": "냉장", "icon": Icon(Icons.add_box, size: 18)},
    {"name": "냉동", "icon": Icon(Icons.add_box, size: 18)},
  ];

  Widget _menuMark(BuildContext context) {
    return SizedBox(
      width: 34,
      height: 40,
      child: MaterialButton(
        elevation: 0,
        shape: const CircleBorder(),
        color: Theme.of(context).appBarTheme.backgroundColor,
        padding: const EdgeInsets.all(0),
        child: Image.asset(
          'assets/images/menu.png',
          width: 22,
          height: 22,
        ),
        onPressed: () async {
          configCallback(context);
        },
      ),
    );
  }

  Widget _bookMark() {
    return SizedBox(
      width: 34,
      child: MaterialButton(
        shape: const CircleBorder(),
        color: Colors.grey,
        padding: const EdgeInsets.all(0),
        child: const Icon(
          Icons.bookmark_border,
          size: 22,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _dropDown(String label, Color color) {
    return Container(
      //padding: const EdgeInsets.only(left: 0),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0, style: BorderStyle.none),
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
        ),
      ),
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton(
            value: 10,
            underline: Container(height: 0,),
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onChanged: (int? value) {},
            items: [
              DropdownMenuItem(
                value: 10,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12.0,
                      backgroundColor: color, //Color(0xff696969),
                      child: Text(
                        label,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ),
                    const SizedBox(width: 6,),
                    const Text(
                      '주변10km',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              DropdownMenuItem(
                value: 20,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12.0,
                      backgroundColor: color, //Color(0xff696969),
                      child: Text(
                        label,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ),
                    const SizedBox(width: 6,),
                    const Text(
                      '주변20km',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              DropdownMenuItem(
                value: 30,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12.0,
                      backgroundColor: color, //Color(0xff696969),
                      child: Text(
                        label,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ),
                    const SizedBox(width: 6,),
                    const Text(
                      '의정부주변',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }

  Widget _themaBtnWidget(String text, Icon icon) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      height: 40,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AdvancedCalendarController _calendarControllerToday = AdvancedCalendarController.custom(controller.orderListParam.value.yearMonthDay!);
    ScrollController scrollController = ScrollController();
    _calendarControllerToday.addListener(() {
      controller.orderListParam.update((val) {val!.yearMonthDay = _calendarControllerToday.value;});
    });
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      //height: 170,
      child: Column(
        children: [
          Row(
            children: [
              _menuMark(context),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width-24-34,
                child: ListView(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 10.0),
                    _bookMark(),
                    const SizedBox(width: 10.0),
                    _dropDown('상', const Color(0xff60acff)),
                    const SizedBox(width: 10.0),
                    _dropDown('하', const Color(0xff005e35)),
                    const SizedBox(width: 10.0),
                    ...themaList.map((ele) {
                      return Row(children: [
                        _themaBtnWidget(ele["name"], ele["icon"]),
                        const SizedBox(width: 10.0)
                      ]);
                    }).toList()
                  ],
                )
              ),
            ],
          ),
          line(),
          AdvancedCalendar(
            controller: _calendarControllerToday,
            events: events,
          ),
        ],
      ),
    );
  }
}
