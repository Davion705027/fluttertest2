Map funcMap = {
   // 010101: [[[8, 12], [13, 7]]] // 和值大小单双
  '010101': (params){
    var sum = params['sum'];
    var da = sum > 10;
    var dan = sum % 2 != 0;
    return [[da, !da], [dan, !dan]];
  },
  // 030103: [[0, 0, 0, 0, 0, 0], [0]] // 三同号
  '030103': (params) {
    var codeArr = params['codeArr'];
    var flag = codeArr[0] == codeArr[1] && codeArr[0] == codeArr[2];
    var num = codeArr[0];
    var res = [[false, false, false, false, false, false], [false]];
    if(flag) {
      res[0][num - 1] = true;
      res[1] = [true];
    }
    return res;
  },
  // 040209: [[0, 1, 1, 1], [3]] // 三连号
  '040209': (params)  {
    var codeArr = params['codeArr'];
    var num = codeArr[0];
    var flag = codeArr[1] == num + 1 && codeArr[2] == num + 2;
    var res = [[false, false, false, false], [false]];
    if(flag) {
      res[0][num - 1] = true;
      res[1] = [true];
    }
    return res;
  },
  // 050201: [[0, 2, 2, 0, 1, 2]] // 二同号复选
  '050201': (params) {
    var codeArr = params['codeArr'];
    
    var num;
    for(var i=0;i<codeArr.length;i++){
      var v = codeArr[i];
      if(codeArr.lastIndexOf(v) != i){
        num = v;
        break;
      }
    }
    var flag = num != null;
    var res = [[false, false, false, false, false, false]];
    if(flag) {
      res[0][num - 1] = true;
    }
    return res;
  },
  // 070101: [[10, 8, 10, 10, 8, 7]] // 猜一个号
  '070101': (params) {
    var codeArr = params['codeArr'];
    return [
      List.generate(6, (i) => codeArr.contains(i + 1))
    ];

  },
};

List keys = funcMap.keys.toList();


dynamic fn(item) {
  return keys.map((v) => funcMap[v] is Function ? funcMap[v](item) : funcMap[v]).toList();
}


Map k3 = {
  'fn': fn,
  'keys': keys,
};

