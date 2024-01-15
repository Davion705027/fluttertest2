Map funcMap = {
   // 010101 猜冠军直选复式
  '010101': (params){
    var codeArr = params['codeArr'];
    return [
      List.generate(10, (i) => codeArr[0] == i+1),
      List.generate(10, (i) => codeArr[1] == i+1),
      List.generate(10, (i) => codeArr[2] == i+1),
      List.generate(10, (i) => codeArr[3] == i+1),
      List.generate(10, (i) => codeArr[4] == i+1),
      List.generate(10, (i) => codeArr[5] == i+1),
      List.generate(10, (i) => codeArr[6] == i+1),
      List.generate(10, (i) => codeArr[7] == i+1),
      List.generate(10, (i) => codeArr[8] == i+1),
      List.generate(10, (i) => codeArr[9] == i+1),
    ];
  },
  '010201': '010101',
	'010301': '010101',
	'010401': '010101',
	'010501': '010101',
	'020101': '010101',
	// 后五定位胆 1
	'020102': (params){
    var codeArr = params['codeArr'];
    return [
      List.generate(10, (i) => codeArr[5] == i+1),
      List.generate(10, (i) => codeArr[6] == i+1),
      List.generate(10, (i) => codeArr[7] == i+1),
      List.generate(10, (i) => codeArr[8] == i+1),
      List.generate(10, (i) => codeArr[9] == i+1),
    ];
  },
  // 龙虎
  '030101': (params){
    var codeArr = params['codeArr'];
    return [
      [codeArr[0] > codeArr[9], !(codeArr[0] > codeArr[9])],
      [codeArr[1] > codeArr[8], !(codeArr[1] > codeArr[8])],
      [codeArr[2] > codeArr[7], !(codeArr[2] > codeArr[7])],
      [codeArr[3] > codeArr[6], !(codeArr[3] > codeArr[6])],
      [codeArr[4] > codeArr[5], !(codeArr[4] > codeArr[5])],
    ];
  },
  '040101': '010101',
	'040201': '010101',
	// 前五大小单双
	'050101': (params){
    var codeArr = params['codeArr'];
    return [
      [
        [codeArr[0] > 5, !(codeArr[0] > 5)],
        [codeArr[0] % 2 > 0, !(codeArr[0] % 2 > 0)]
      ],
      [
        [codeArr[1] > 5, !(codeArr[1] > 5)],
        [codeArr[1] % 2 > 0, !(codeArr[1] % 2 > 0)]
      ],
      [
        [codeArr[2] > 5, !(codeArr[2] > 5)],
        [codeArr[2] % 2 > 0, !(codeArr[2] % 2 > 0)]
      ],
      [
        [codeArr[3] > 5, !(codeArr[3] > 5)],
        [codeArr[3] % 2 > 0, !(codeArr[3] % 2 > 0)]
      ],
      [
        [codeArr[4] > 5, !(codeArr[4] > 5)],
        [codeArr[4] % 2 > 0, !(codeArr[4] % 2 > 0)]
      ],
    ];
  },
  // 冠亚和值大小单双
	'050102': (params) {
    var codeArr = params['codeArr'];
		var s = codeArr[0] + codeArr[1];
		return [[s > 11, !(s > 11)], [s % 2 > 0, !(s % 2 > 0)]];
	},

};

List keys = funcMap.keys.toList();


dynamic fn(item) {
  return keys.map((v) => funcMap[v] is Function ? funcMap[v](item) : funcMap[v]).toList();
}


Map pk10 = {
  'fn': fn,
  'keys': keys,
};

