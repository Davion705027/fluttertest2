import '../LHCHelper.dart';

Map funcMap = {
  //特码
  '010101': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr[6] == i + 1)];
  },
  // 特码头尾数
  '010102': (params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(5, (i) => (codeArr[6] ~/ 10) == i),
      List.generate(10, (i) => codeArr[6] % 10 == i),
    ];
  },
  // 合肖
  '020101': (params) {
    var codeArr = params['codeArr'];
    var saleStartTime = params['saleStartTime'];
    var tx = countYearShengXiao(codeArr[6], saleStartTime);
    return shengxiao.map((v) => tx == v).toList();
  },
  '020102': '020101',
  // 特肖五行
  '020103': (params) {
    var codeArr = params['codeArr'];
    return [
      findBallsToWuxingIndex(codeArr[6]) == 'jin',
      findBallsToWuxingIndex(codeArr[6]) == 'mu',
      findBallsToWuxingIndex(codeArr[6]) == 'shui',
      findBallsToWuxingIndex(codeArr[6]) == 'huo',
      findBallsToWuxingIndex(codeArr[6]) == 'tu',
    ];
  },
  // 特码形态
  '020104': (params) {
    var codeArr = params['codeArr'];
    var da = codeArr[6] > 24;
    var dan = codeArr[6] % 2 > 0;
    var sijiu = codeArr[6] == 49;
    return [
      [da && !sijiu, !da && !sijiu],
      [dan && !sijiu, !dan && !sijiu],
      [
        da && dan && !sijiu,
        !da && dan && !sijiu,
        da && !dan && !sijiu,
        !da && !dan && !sijiu
      ],
    ];
  },
  // 特合形态
  '020105': (params) {
    var codeArr = params['codeArr'];
    var he = codeArr[6] % 10 + (codeArr[6] ~/ 10);
    var da = he > 6;
    var dan = he % 2 > 0;
    var sijiu = codeArr[6] == 49;
    return [
      [da && !sijiu, !da && !sijiu],
      [dan && !sijiu, !dan && !sijiu],
    ];
  },
  // 特尾形态
  '020106': (params) {
    var codeArr = params['codeArr'];
    var wei = codeArr[6] % 10;
    var da = wei > 4;
    var dan = wei % 2 > 0;
    var sijiu = codeArr[6] == 49;
    return [
      [da && !sijiu, !da && !sijiu],
      [dan && !sijiu, !dan && !sijiu],
    ];
  },
  // 特肖形态
  '020107': (params) {
    var codeArr = params['codeArr'];
    var saleStartTime = params['saleStartTime'];
    var tx = countYearShengXiao(codeArr[6], saleStartTime);
    return [
      [
        tianDiXiao.firstWhere((v) => v['name'] == '天')['list'].contains(tx),
        tianDiXiao.firstWhere((v) => v['name'] == '地')['list'].contains(tx),
      ],
      [
        qianHouXiao.firstWhere((v) => v['name'] == '前')['list'].contains(tx),
        qianHouXiao.firstWhere((v) => v['name'] == '后')['list'].contains(tx),
      ],
      [
        jiaYeXiao.firstWhere((v) => v['name'] == '家')['list'].contains(tx),
        jiaYeXiao.firstWhere((v) => v['name'] == '野')['list'].contains(tx),
      ],
    ];
  },
  // 色波
  '030101': (params) {
    var codeArr = params['codeArr'];
    var code = params['code'];
    var tm = code.split(' ')[6];
    var red = sebo_red.contains(tm);
    var blue = sebo_blue.contains(tm);
    var green = sebo_green.contains(tm);
    return [red, blue, green];
  },
  // 半波
  '030102': (params) {
    var codeArr = params['codeArr'];
    var code = params['code'];
    var tm = code.split(' ')[6];
    var red = sebo_red.contains(tm);
    var blue = sebo_blue.contains(tm);
    var green = sebo_green.contains(tm);
    var da = codeArr[6] > 24;
    var dan = codeArr[6] % 2 > 0;
    var sijiu = codeArr[6] == 49;
    return [
      [
        red && da && !sijiu,
        red && !da && !sijiu,
        red && dan && !sijiu,
        red && !dan && !sijiu
      ],
      [
        blue && da && !sijiu,
        blue && !da && !sijiu,
        blue && dan && !sijiu,
        blue && !dan && !sijiu
      ],
      [
        green && da && !sijiu,
        green && !da && !sijiu,
        green && dan && !sijiu,
        green && !dan && !sijiu
      ],
    ];
  },
  // 正码任选一
  '040101': (params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(49, (i) => codeArr.sublist(0, 6).contains(i + 1)).toList()
    ];
  },
  // 正一特
  '040102': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr[0] == i + 1).toList()];
  },
  // 正二特
  '040103': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr[1] == i + 1).toList()];
  },
  // 正三特
  '040104': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr[2] == i + 1).toList()];
  },
  // 正四特
  '040105': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr[3] == i + 1).toList()];
  },
  // 正五特
  '040106': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr[4] == i + 1).toList()];
  },
  // 正六特
  '040107': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr[5] == i + 1).toList()];
  },
  '040108': '040101',
  '040109': '040101',
  '040110': '040101',
  '040111': '040101',
  '040112': '040101',
  '040113': '040101',
  // 正肖
  '050101': (params) {
    var codeArr = params['codeArr'];
    var saleStartTime = params['saleStartTime'];
    var sx = codeArr
        .sublist(0, 6)
        .map((value) => countYearShengXiao(value, saleStartTime))
        .toList();
    return shengxiao.map((v) => sx.contains(v)).toList();
  },
  // 正波
  '060101': (params) {
    var codeArr = params['codeArr'];
    var zm = codeArr.sublist(0, 6);
    return zm.map((v) {
      v = v.toString().length == 1 ? '0$v' : v.toString();
      var red = sebo_red.contains(v);
      var blue = sebo_blue.contains(v);
      var green = sebo_green.contains(v);
      return [red, blue, green];
    }).toList();
  },
  // 总和
  '070101': (params) {
    var sum = params['sum'];
    return [
      [sum > 175, sum < 175],
      [sum % 2 > 0, !(sum % 2 > 0)],
    ];
  },
  // 平特尾数
  '070102': (params) {
    var codeArr = params['codeArr'];
    var wei = codeArr.map((v) => v % 10).toList();
    return [
      wei.contains(0),
      wei.contains(1),
      wei.contains(2),
      wei.contains(3),
      wei.contains(4),
      wei.contains(5),
      wei.contains(6),
      wei.contains(7),
      wei.contains(8),
      wei.contains(9),
    ];
  },
  // 自选不中
  '070103': (params) {
    var codeArr = params['codeArr'];
    return List.generate(49, (i) => codeArr.contains(i + 1)).toList();
  },
  '070104': '070102',
  '070105': '070102',
  '070106': '070102',
  '070107': '070102',
  // 二中特
  '070108': (params) {
    var codeArr = params['codeArr'];
    return [List.generate(49, (i) => codeArr.contains(i + 1)).toList()];
  },
  '070109': '070108',
  // 一肖
  '080101': (params) {
    var codeArr = params['codeArr'];
    var saleStartTime = params['saleStartTime'];
    var sx = codeArr
        .map((value) => countYearShengXiao(value, saleStartTime))
        .toList();
    return shengxiao.map((v) => sx.contains(v)).toList();
  },
  '080102': '080101',
  '080103': '080101',
  '080104': '080101',
  '080105': '080101',
  // 总肖
  '080106': (params) {
    var codeArr = params['codeArr'];
    var saleStartTime = params['saleStartTime'];
    var sx = codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
    var zx = Set.from(sx).length;
    return [zx == 2, zx == 3, zx == 4, zx == 5, zx == 6, zx == 7];
  },
  // 总肖单双
  '080107': (params) {
    var codeArr = params['codeArr'];
    var saleStartTime = params['saleStartTime'];
    var sx = codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
    var zx = Set.from(sx).length;
    return [
      zx % 2 > 0,
      !(zx % 2 > 0),
    ];
  },
  // 七色波
  '090101': (params) {
    var codeArr = params['codeArr'];
    var tm = codeArr[6].toString().padLeft(2, '0');
    var zhengbo = codeArr.sublist(0, 6).fold({
      'red': 0,
      'blue': 0,
      'green': 0,
    }, (prev, value) {
      value = value.toString().padLeft(2, '0');
      prev['red'] += sebo_red.contains(value) ? 1 : 0;
      prev['blue'] += sebo_blue.contains(value) ? 1 : 0;
      prev['green'] += sebo_green.contains(value) ? 1 : 0;
      return prev;
    });
    var tred = sebo_red.contains(tm);
    var tblue = sebo_blue.contains(tm);
    var tgreen = sebo_green.contains(tm);
    var heju = false;
    var green = false;
    var red = false;
    var blue = false;
    if ((zhengbo['red'] == 3 && zhengbo['blue'] == 3 && tgreen) ||
        (zhengbo['green'] == 3 && zhengbo['blue'] == 3 && tred) ||
        (zhengbo['red'] == 3 && zhengbo['green'] == 3 && tblue)) {
      heju = true;
    } else {
      var redValue = zhengbo['red'] + (tred ? 1.5 : 0);
      var blueValue = zhengbo['blue'] + (tblue ? 1.5 : 0);
      var greenValue = zhengbo['green'] + (tgreen ? 1.5 : 0);
      red = redValue > blueValue && redValue > greenValue;
      blue = blueValue > redValue && blueValue > greenValue;
      green = greenValue > blueValue && greenValue > redValue;
    }
    return [
      red,
      blue,
      green,
      heju,
    ];
  },
};

List keys = funcMap.keys.toList();

dynamic fn(item) {
  return keys
      .map((v) => funcMap[v] is Function ? funcMap[v](item) : funcMap[v])
      .toList();
}

Map lhc = {
  'fn': fn,
  'keys': keys,
};
