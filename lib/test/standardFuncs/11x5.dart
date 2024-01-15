Map funcMap = {
   // 前三直选复式
  '010101': (params){
    var codeArr = params['codeArr'];
    return [
      List.generate(11, (i) => codeArr[0] == i+1),
      List.generate(11, (i) => codeArr[1] == i+1),
      List.generate(11, (i) => codeArr[2] == i+1),
    ];
  },
  // 前三组选复式
  '010201': (params){
    var codeArr = params['codeArr'];
    var ca = codeArr.sublist(0, 3);
    return [
      List.generate(11, (i) => ca.contains(i+1))
    ];
  },
  '020101': "010101",
  // 前二组选复式
  '020201': (params){
    var codeArr = params['codeArr'];
    var ca = codeArr.sublist(0, 2);
    return [
      List.generate(11, (i) => ca.contains(i+1))
    ];
  },
  '030101': "010201",
  '040101': "010101",
  // 任选复式一中一
  '050101': (params){
    var codeArr = params['codeArr'];
    return [
      List.generate(11, (i) => codeArr.contains(i+1))
    ];
  },
  // 趣味定单双
  '060101': (params){
    var codeArr = params['codeArr'];
    var danNum = codeArr.fold(0, (prev, value) => prev + (value % 2 > 0 ? 1 : 0));
    return [
      List.generate(6, (i) => danNum == 5 - i),
    ];
  },
  // 趣味猜中位
  '060201': (params){
    var codeArr = params['codeArr'];
    var sortArr = codeArr..sort();
    var zw = sortArr[2];
    return [
      [3, 4, 5, 6, 7, 8, 9].map((v) => zw == v).toList(),
    ];
  }

};

List keys = funcMap.keys.toList();


dynamic fn(item) {
  return keys.map((v) => funcMap[v] is Function ? funcMap[v](item) : funcMap[v]).toList();
}


Map syxw = {
  'fn': fn,
  'keys': keys,
};

