Map funcMap = {
  // 三星直选复式
  '010101': ( params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(10, (i) => codeArr[0] == i),
      List.generate(10, (i) => codeArr[1] == i),
      List.generate(10, (i) => codeArr[2] == i),
    ];
  },
  // 三星组选三复式
  '010201': ( params) {
    var codeArr = params['codeArr'];
    return List.generate(10, (i) => codeArr.contains(i));
  },
  '010202': '010201',
  '010205': '010201',
  '020101': '010101',
  // 前二组选复式
  '020201': ( params) {
    var codeArr = params['codeArr'].sublist(0, 2);
    return List.generate(10, (i) => codeArr.contains(i));
  },
  '020204': '020201',
  // 后二直选复式
  '030301': ( params) {
    var codeArr = params['codeArr'].sublist(1, 3);
    return [
      List.generate(10, (i) => codeArr[0] == i),
      List.generate(10, (i) => codeArr[1] == i),
    ];
  },
  '030401': '030404',
  // 后二组选包胆
  '030404': ( params) {
    var codeArr = params['codeArr'].sublist(1, 3);
    return List.generate(10, (i) => codeArr.contains(i));
  },
  '040101': '010101',
  '050101': '010201',
  '050102': '010201',
  // 龙虎和
  '060101': ( params) {
    var codeArr = params['codeArr'];
    return [
      [codeArr[0] > codeArr[1], codeArr[0] < codeArr[1], codeArr[0] == codeArr[1]],
      [codeArr[0] > codeArr[2], codeArr[0] < codeArr[2], codeArr[0] == codeArr[2]],
      [codeArr[1] > codeArr[2], codeArr[1] < codeArr[2], codeArr[1] == codeArr[2]],
    ];
  },
};

List keys = funcMap.keys.toList();


dynamic fn(item) {
  return keys.map((v) => funcMap[v] is Function ? funcMap[v](item) : funcMap[v]).toList();
}


Map sd = {
  'fn': fn,
  'keys': keys,
};

