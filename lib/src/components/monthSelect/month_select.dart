import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

const numberOfItems = 16;
const minItemHeight = 20.0;
const maxItemHeight = 150.0;
const scrollDuration = Duration(milliseconds: 300);
const randomMax = 1 << 32;

class MonthSelect extends StatefulWidget {
  MonthSelect({Key? key}) : super(key: key);

  @override
  _MonthSelectState createState() => _MonthSelectState();
}

class _MonthSelectState extends State<MonthSelect> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  late List<double> itemHeights;
  late List<Color> itemColors;
  bool reversed = false;
  double alignment = 0.5 -1/9;
  int selectMonth = DateTime.now().month + 1;

  @override
  void initState() {
    super.initState();
    final heightGenerator = Random(328902348);
    final colorGenerator = Random(42490823);
    itemHeights = List<double>.generate(numberOfItems,
        (int _) =>
            heightGenerator.nextDouble() * (maxItemHeight - minItemHeight) +
            minItemHeight);
    itemColors = List<Color>.generate(numberOfItems,
        (int _) => Color(colorGenerator.nextInt(randomMax)).withOpacity(1));
  }

  Widget list(Orientation orientation) => ScrollablePositionedList.builder(
    scrollDirection: Axis.horizontal,
    itemCount: numberOfItems,
    itemBuilder: (context, index) => item(index, orientation),
    itemScrollController: itemScrollController,
    itemPositionsListener: itemPositionsListener,
    reverse: reversed,
  );

  void scrollTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: alignment);

  void jumpTo(int index) =>
      itemScrollController.jumpTo(index: index, alignment: alignment);

  /// Generate item number [i].
  Widget item(int i, Orientation orientation) {
    TextStyle textStyle = selectMonth==i ?
      const TextStyle(color: Color(0xff005e35), fontWeight: FontWeight.bold, fontSize: 18)
      :
      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18); 

    String zeroStr = i<11 ? "0" : "";
    return SizedBox(
      width: (MediaQuery.of(context).size.width)/4.5,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: 
        (i > 1 && i<14) ? Container(
          decoration: BoxDecoration(
            color: selectMonth==i ? Colors.white : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid
            ),
          ),
          child: TextButton(
            onPressed: () {
              // itemScrollController.scrollTo(
              //   index: i, alignment: alignment, curve: Curves.easeInOutCubic, duration: Duration(milliseconds: 300)
              // );
              setState(() {
                selectMonth = i;
              });
            },
            child: Text("$zeroStr${(i-1)}월",style: textStyle,),
          ),
        )
        :
        SizedBox()
        ,
      ),
    );
  }
  
  @override
  Widget build(BuildContext context){
    WidgetsBinding.instance.addPostFrameCallback((_) => scrollTo(selectMonth));
    return  OrientationBuilder(
      builder: (context, orientation) => Container(
        color: const Color(0xff005e35),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10,),
            SizedBox(
              height: 50,
              child: list(orientation),
            ),
          ],
        ),
      ),
    );
  }
}