// export 'ssc.dart';
import 'dart:core';

import '../util.dart';
Map funcMap3 = {
  // 五星直选复式
  '010101':(params){
    var codeArr = params['codeArr'];
    return [
      List<bool>.filled(10, false, growable: false)..[codeArr[0]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[1]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[2]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[3]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[4]] = true,
    ];
  },
};


Map funcMap = {
  // 五星直选复式
  '010101':(params){
    var codeArr = params['codeArr'];
    return [
      List<bool>.filled(10, false, growable: false)..[codeArr[0]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[1]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[2]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[3]] = true,
      List<bool>.filled(10, false, growable: false)..[codeArr[4]] = true,
    ];
  },
  '010103': '010101',
  // 五星组选120
  '010201': (params) {
    var codeArr = params['codeArr'];
   return List.generate(10, (i) => codeArr.contains(i));
  },
  '020101': '010101',
  '020103': '010101',
  // 前四组选24
  '020201': (params)  {
    var codeArr = params['codeArr'];
    var arr = codeArr.sublist(0, 4);
    return List.generate(10, (i) => arr.contains(i));
  },
  // 后四直选复式
  '020301': (params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(10, (i) => codeArr[1] == i),
      List.generate(10, (i) => codeArr[2] == i),
      List.generate(10, (i) => codeArr[3] == i),
      List.generate(10, (i) => codeArr[4] == i)
    ];
  },
  // 后四直选组合
  '020303': '020301',
  // 后四组选24
  '020401': (params) {
    var codeArr = params['codeArr'];
    var arr = codeArr.sublist(1, 5);
    return List.generate(10, (i) => arr.contains(i));
  },
  '030101': '010101',
  '030103': '010101',
  // 前三组选六
  '030202': (params) {
    var codeArr = params['codeArr'];
    var arr = codeArr.sublist(0, 3);
    return List.generate(10, (i) => arr.contains(i));
  },
  '030207': '030202',
  // 中三直选复式
  '040101': (params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(10, (i) => codeArr[1] == i),
      List.generate(10, (i) => codeArr[2] == i),
      List.generate(10, (i) => codeArr[3] == i),
    ];
  },
  // 中三直选组合
  '040103': '040101',
  // 中三组选六
  '040202': (params) {
    var codeArr = params['codeArr'];
    var arr = codeArr.sublist(1, 4);
    return List.generate(10, (i) => arr.contains(i));
  },
  '040207': '040202',
  
  // 后三直选复式
  '050101': (Map<String, dynamic> params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(10, (i) => codeArr[2] == i),
      List.generate(10, (i) => codeArr[3] == i),
      List.generate(10, (i) => codeArr[4] == i),
    ];
  },
  // 后三直选组合
  '050103': '050101',
  // 后三组选六
  '050202': (Map<String, dynamic> params) {
    var arr = params['codeArr'].sublist(2, 5);
    return List.generate(10, (i) => arr.contains(i));
  },
  
  '050207': '050202',
  '060101': '010101',
  // 前二组选复式
  '060201': (Map<String, dynamic> params) {
    var arr = params['codeArr'].sublist(0, 2);
    return List.generate(10, (i) => arr.contains(i));
  },
  
  '060204': '060201',

  // 后二直选复式
  '070101': (Map<String, dynamic> params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(10, (i) => codeArr[3] == i),
      List.generate(10, (i) => codeArr[4] == i),
    ];
  },

  // 后二组选复式
  '070201': (Map<String, dynamic> params) {
    var arr = params['codeArr'].sublist(3, 5);
    return List.generate(10, (i) => arr.contains(i));
  },
  '070204': '070201',
  '080101': '010101',
  '090101': '030202',
  '090102': '030202',
  '090103': '040202',
  '090104': '040202',
  '090105': '050202',
  '090106': '050202',
  '090201': '020201',
  '090202': '020201',
  '090203': '020201',
  '090204': '020401',
  '090205': '020401',
  '090206': '020401',
  '090301': '010201',
  '090302': '010201',
  '090303': '010201',
  '100000': (Map<String, dynamic> params) {
    var codeArr = params['codeArr'];
    return [
      [codeArr[0] > 4, !(codeArr[0] > 4), codeArr[0] % 2 > 0, !(codeArr[0] % 2 > 0)],
      [codeArr[1] > 4, !(codeArr[1] > 4), codeArr[1] % 2 > 0, !(codeArr[1] % 2 > 0)],
      [codeArr[2] > 4, !(codeArr[2] > 4), codeArr[2] % 2 > 0, !(codeArr[2] % 2 > 0)],
      [codeArr[3] > 4, !(codeArr[3] > 4), codeArr[3] % 2 > 0, !(codeArr[3] % 2 > 0)],
      [codeArr[4] > 4, !(codeArr[4] > 4), codeArr[4] % 2 > 0, !(codeArr[4] % 2 > 0)],
    ];
  },
   // 前二大小单双组合
  '100101': '100000',
  '100102': '100000',
  // 后二大小单双组合
  '100103': (params) {
    var codeArr = params['codeArr'];
    return [
      [codeArr[3] > 4, !(codeArr[3] > 4),
      codeArr[3] % 2 > 0, !(codeArr[3] % 2 > 0)],
      [codeArr[4] > 4, !(codeArr[4] > 4),
      codeArr[4] % 2 > 0, !(codeArr[4] % 2 > 0)],
    ];
  },
  // 后三大小单双组合
  '100104': (params) {
    var codeArr = params['codeArr'];
    return [
      [codeArr[2] > 4, !(codeArr[2] > 4),
      codeArr[2] % 2 > 0, !(codeArr[2] % 2 > 0)],
      [codeArr[3] > 4, !(codeArr[3] > 4),
      codeArr[3] % 2 > 0, !(codeArr[3] % 2 > 0)],
      [codeArr[4] > 4, !(codeArr[4] > 4),
      codeArr[4] % 2 > 0, !(codeArr[4] % 2 > 0)],
    ];
  },
  // 五星和值大小单双
  '100201': (params) {
    var sum = params['sum'];
    return [
      [sum > 22, !(sum > 22),
      sum % 2 > 0, !(sum % 2 > 0)],
    ];
  },
  // 三星和值大小单双
  '100208': (params) {
    var codeArr = params['codeArr'];
    return List.generate(3, (i) {
      var sum = codeArr[i] + codeArr[i + 1] + codeArr[i + 2];
      return [sum > 13, !(sum > 13),
      sum % 2 > 0, !(sum % 2 > 0)];
    });
  },
  '110101': '010201',
  '110102': '010201',
  '110103': '010201',
  '110104': '010201',
  '120101': '010101',
  '120201': '010201',
  '120204': '010201',
  '140101': '010101',
  '140201': '010201',
  '140202': '010201',
  '150101': '010101',
  '150201': '010201',
  '150202': '010201',
  '150203': '010201',
  '150204': '010201',
  // 龙虎和
  '160101': (params) {
  var codeArr = params['codeArr'];
  var arr = [];
  for (var i = 0; i < 5; i++) {
    for (var j = i + 1; j < 5; j++) {
      arr.add([
        codeArr[i] > codeArr[j],
        codeArr[i] < codeArr[j],
        codeArr[i] == codeArr[j]
      ]);
    }
  }
  return arr;
  },

  // 梭哈
'170101': (params) {
  var codeArr = params['codeArr'];
  // 每个数字出现次数
  var arr = List.filled(10, 0);
  codeArr.forEach((v) {
    arr[v]++;
  });
  arr = arr.where((v) => v > 0).toList();
  var sz = codeArr.any((v) =>
      List.generate(4, (i) => codeArr.contains((v + i + 1) % 10)).every(
          (v1) => v1));
  return [
    arr.contains(4),
    arr.contains(3) && arr.length == 2,
    sz,
    arr.contains(3) && arr.length == 3,
    arr.contains(2) && arr.length == 3,
    arr.contains(2) && arr.length == 4,
    arr.length == 5 && !sz,
  ];
},


  // 三星炸金花
  '180101': (params) {
  var codeArr = params['codeArr'];
  var qs = codeArr.sublist(0, 3);
  var zs = codeArr.sublist(1, 4);
  var hs = codeArr.sublist(2, 5);
  return [
    [baozi(qs), shunzi(qs), duizi(qs), zaliu(qs), banshun(qs)],
    [baozi(zs), shunzi(zs), duizi(zs), zaliu(zs), banshun(zs)],
    [baozi(hs), shunzi(hs), duizi(hs), zaliu(hs), banshun(hs)],
  ];
  },

  // 百家乐
  '190101': (params) {
  return [];
  },

  // 牛牛
  '200101': (params) {
  var codeArr = params['codeArr'];
  var wuniu = true;
  for (var i = 0; i < codeArr.length && wuniu; i++) {
    for (var j = i + 1; j < codeArr.length && wuniu; j++) {
      for (var k = j + 1; k < codeArr.length && wuniu; k++) {
        wuniu = !((codeArr[i] + codeArr[j] + codeArr[k]) % 10 == 0);
      }
    }
  }
  var niuNum = 0;
  if (!wuniu) {
    niuNum = getSumByNum(codeArr) % 10;
  }
  return [
    [niuNum > 5 || niuNum == 0, !(niuNum > 5 || niuNum == 0) && !wuniu],
    [niuNum % 2 > 0, !(niuNum % 2 > 0) && !wuniu],
    [
      wuniu,
      niuNum == 1,
      niuNum == 2,
      niuNum == 3,
      niuNum == 4,
      niuNum == 5,
      niuNum == 6,
      niuNum == 7,
      niuNum == 8,
      niuNum == 9,
      niuNum == 0,
    ],
  ];
  },

  

};


List keys = funcMap.keys.toList();


dynamic fn(item) {
  return keys.map((v) => funcMap[v] is Function ? funcMap[v](item) : funcMap[v]).toList();
}


Map ssc = {
  'fn': fn,
  'keys': keys,
};



