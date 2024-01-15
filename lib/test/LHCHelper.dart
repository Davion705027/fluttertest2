import 'util.dart';

import 'calendar.dart';

String getBirthYear(){
  return '兔';
}
// 539彩系生肖列表
var sxNumArray539 = [
    ['04', '16', '28'],
    ['03', '15', '27', '39'],
    ['02', '14', '26', '38'],
    ['01', '13', '25', '37'],
    ['12', '24', '36'],
    ['11', '23', '35'],
    ['10', '22', '34'],
    ['09', '21', '33'],
    ['08', '20', '32'],
    ['07', '19', '31'],
    ['06', '18', '30'],
    ['05', '17', '29'],
];

var wuxingArray = {
    'jin': ['05', '06', '19', '20', '27', '28', '35', '36', '49'],                     // 金
    'mu': ['01', '02', '09', '10', '17', '18', '31', '32', '39', '40', '47', '48'],   // 木
    'shui': ['07', '08', '15', '16', '23', '24', '37', '38', '45', '46'],               // 水
    'huo': ['03', '04', '11', '12', '25', '26', '33', '34', '41', '42'],               // 火
    'tu': ['13', '14', '21', '22', '29', '30', '43', '44'],                           // 土
};

var SXC_CODE = ['shu', 'niu', 'hu', 'tu', 'long', 'she', 'ma', 'yang', 'hou', 'ji', 'gou', 'zhu'];

// todo 国际化
const shengxiao = ['鼠', '牛', '虎', '兔', '龙', '蛇', '马', '羊', '猴', '鸡', '狗', '猪'];

var sebo_red = ['01', '02', '07', '08', '12', '13', '18', '19', '23', '24', '29', '30', '34', '35', '40', '45', '46'];
var sebo_blue = ['03', '04', '09', '10', '14', '15', '20', '25', '26', '31', '36', '37', '41', '42', '47', '48'];
var sebo_green = ['05', '06', '11', '16', '17', '21', '22', '27', '28', '32', '33', '38', '39', '43', '44', '49'];
var sebo_red539 = ['01', '04', '07', '10', '13', '16', '19', '22', '25', '28', '31', '34', '37'];
var sebo_blue539 = ['02', '05', '08', '11', '14', '17', '20', '23', '26', '29', '32', '35', '38'];
var sebo_green539 = ['03', '06', '09', '12', '15', '18', '21', '24', '27', '30', '33', '36', '39'];

var sxNumArray = [
    ['01', '13', '25', '37', '49'],
    ['12', '24', '36', '48'],
    ['11', '23', '35', '47'],
    ['10', '22', '34', '46'],
    ['09', '21', '33', '45'],
    ['08', '20', '32', '44'],
    ['07', '19', '31', '43'],
    ['06', '18', '30', '42'],
    ['05', '17', '29', '41'],
    ['04', '16', '28', '40'],
    ['03', '15', '27', '39'],
    ['02', '14', '26', '38'],
];

var sxArray = ['鼠', '牛', '虎', '兔', '龙', '蛇', '马', '羊', '猴', '鸡', '狗', '猪'];

List<Map>  tianDiXiao = [
    {
        'name': '天',
        'list': [shengxiao[1], shengxiao[3], shengxiao[4], shengxiao[6], shengxiao[8], shengxiao[11]]
    },
    {
        'name': '地',
        'list': [shengxiao[0], shengxiao[2], shengxiao[5], shengxiao[7], shengxiao[9], shengxiao[10]]
    }
];

List<Map> qianHouXiao = [
    {
        'name': '前',
        'list': [
            shengxiao[0], 
            shengxiao[1], 
            shengxiao[2], 
            shengxiao[3], 
            shengxiao[4],
            shengxiao[5]
        ]
    },
    {
        'name': '后',
        'list': [
            shengxiao[6], 
            shengxiao[7], 
            shengxiao[8], 
            shengxiao[9], 
            shengxiao[10],
            shengxiao[11]
        ]
    }
];

List<Map>  jiaYeXiao = [
    {
        'name': '家',
        'list': [
            shengxiao[1], // 牛
            shengxiao[6], // 马
            shengxiao[7], // 羊
            shengxiao[9], // 鸡
            shengxiao[10], // 狗
            shengxiao[11] // 猪
        ]
    },
    {
        'name': '野',
        'list': [
            shengxiao[0], // 鼠
            shengxiao[2], // 虎
            shengxiao[3], // 兔
            shengxiao[4], // 龙
            shengxiao[5], // 蛇
            shengxiao[8], // 蛇
        ]
    }
];

// 获得生肖数组（当年生肖排第一位）
List getSXList(ticketType) {
  var sx = getBirthYear();
  int sxIndex = sxArray.indexOf(sx);
  var newSxArray = [...sxArray.sublist(sxIndex), ...sxArray.sublist(0, sxIndex)];
  var numArray = (ticketType == '539') ? sxNumArray539 : sxNumArray;

  return numArray.asMap().entries.map((entry) {
    var index = entry.key;
    var item = entry.value;

    var obj = {
      'name': newSxArray[index],
      'balls': item,
    };

    if (index == 0) {
      obj['isBenMing'] = true;
    }

    return obj;
  }).toList();
}

List getSXListWithoutSebo() {
  var sx = getBirthYear();
  int sxIndex = sxArray.indexOf(sx);
  var newSxArray = [...sxArray.sublist(sxIndex), ...sxArray.sublist(0, sxIndex)];

  return sxNumArray.asMap().entries.map((entry) {
    var index = entry.key;
    var item = entry.value;

    var obj = {
      'name': newSxArray[index],
      'balls': item,
    };

    if (index == 0) {
      obj['isBenMing'] = true;
    }

    return obj;
  }).toList();
}

// String getSeboByNum(int num) {
//   String numString = num.toString();
//   String cls;

//   if (sebo_red.contains(numString)) {
//     cls = 'sebo_red';
//   } else if (sebo_blue.contains(numString)) {
//     cls = 'sebo_blue';
//   } else if (sebo_green.contains(numString)) {
//     cls = 'sebo_green';
//   }

//   return '<i class="$cls">$numString</i>';
// }

findBallsToSX( balls, ticketType) {
  var SXNumber = getSXList(ticketType);
  balls = balls.toString();
  balls = balls.length > 1 ? balls : '0$balls';
  var newSX = SXNumber.firstWhere(
      (item) => item['balls'].contains(balls),
      );

  return newSX != null ? newSX['name'] : '';
}


countYearShengXiao( code,  saleStartTime,  [ticketType]) {
  final shengxiaoValue = findBallsToSX(code, ticketType);
  var index = shengxiao.indexOf(shengxiaoValue);
  if (hasVal(saleStartTime)) {
    final now = DateTime.now();
    final issueDate = DateTime.parse(saleStartTime);

    // 公历转农历获取年份-当前
    int nowYear = calendar['solar2lunar'](now.year, now.month, now.day)['lYear'];

    // 公历转农历获取年份-奖期
    int issueYear = calendar['solar2lunar'](
      issueDate.year,
      issueDate.month,
      issueDate.day,
    )['lYear'];

    if (nowYear != issueYear) {
      index = index - (nowYear - issueYear);
      if (index < 0) {
        index = index % 12 + 12;
      }
    }
  }
  return shengxiao[index];
}

findBallsToWuxingIndex(dynamic ball) {
  ball = ball.toString();
  ball = ball.length == 1 ? '0' + ball : ball;
  var _index;
  for (var name in wuxingArray.keys) {
    if (wuxingArray[name]!.contains(ball)) {
      _index = name;
    }
  }
  return _index;
}
