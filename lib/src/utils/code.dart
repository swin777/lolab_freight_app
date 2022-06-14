Map<String, String> carOption = {
  'lift': '리프트',
  'antiSwing': '무진동',
  'longAxis': '장축',
  'plus': '플러스',
  'plusLongAxis': '플러스장축',
  'highTop': '하이탑',
  'lowTop': '로우탑',
};

Map<String, String> freightMethod = {'forklift': "지게차", 'handwork': "수작업"};

Map<String, String> freightMethodSimple = {'forklift': "지", 'handwork': "수"};

Map<String, String> deliveryStatus = {
  'chargeChecking': "요금조정",
  'deliveryRequested': "배송요청",
  'dispatchCompleted': "배차완료",
  'loadingCompleted': "상차완료",
  'unloadingCompleted': "하차완료"
};
Map<String, String> carModel = {
  'damas': "다마스",
  'labo': "라보",
  'oneT': "1t",
  'oneDotFourT': "1.4t",
  'twoDotFiveT': "2.5t",
  'threeDotFiveT': "3.5t",
  'fiveT': "5t",
  'eightT': "8t",
  'nineDotFiveT': "9.5t",
  'elevT': "11t",
  'fifteenT': "15t",
  'eighteenT': "18t",
  'twentyTwoT': "22t",
  'twentyFiveT': "25t",
};
Map<String, String> packagingType = {
  'box': "포장박스",
  'palette': "팔렛트",
  'cbm': "CBM",
  'ea': "EA"
};

Map<String, String> carType = {
  'damas': "다마스",
  'labo': "라보",
  'cargo': "카고",
  'wingbody': "윙바디",
  'truck': "탑",
  'holo': "호로",
  'refrigerationTruck': "냉장",
  'freezerTruck': "냉동",
  'trailer': "트레일러",
  'doubleDeckTrailer': "더블데크 트레일러"
};
Map<String, String> freightType = {
  'food': "식품",
  'agricultural': "농산물",
  'livestock': "축산물",
  'fisheries': "수산물",
  'industrial': "공산품",
  'medicine': "의약품",
  'other': "기타"
};
Map<String, String> deliveryTemperature = {
  'roomTemp': "상온",
  'over15Degree': "영상15C이상(온풍기 차량)",
  'cold': "냉장(0~5C 이하)",
  'freeze': "냉동(영하18C 이하)"
};
String convertString(Map type, String value) {
  if (value != null) {
    var match = type.keys.where((element) => element == value).isNotEmpty
        ? type.keys.where((element) => element == value).first
        : '';
    return match != '' ? type[match] : value;
  } else
    return '';
}

String convertCode(Map type, String value) {
  var match = type.keys.where((element) => type[element] == value).first;
  return match ?? value;
}
