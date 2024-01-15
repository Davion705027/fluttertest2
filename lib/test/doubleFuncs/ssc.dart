// export 'ssc.dart';
import 'dart:core';

import 'package:personal/test/util.dart';

var ssc = {
  '01': {
    'shuangmian': (Map<String, dynamic> params) {
      final codeArr = params['codeArr'];
      final sum = params['sum'];
      return {
        'zonghelonghuhe': {
          'zonghedaxiao': {
            'da': sum > 22,
            'xiao': !(sum > 22),
          },
          'zonghedanshuang': {
            'dan': sum % 2 > 0,
            'shuang': !(sum % 2 > 0),
          },
          'long': {
            'long': codeArr[0] > codeArr[4],
            'hu': codeArr[0] < codeArr[4],
            'he': codeArr[0] == codeArr[4],
          },
        },
        'diyiqiu': {
          'diyiqiudaxiao': {
            'da': codeArr[0] > 4,
            'xiao': !(codeArr[0] > 4),
          },
          'diyiqiudanshuang': {
            'dan': codeArr[0] % 2 > 0,
            'shuang': !(codeArr[0] % 2 > 0),
          },
          'diyiqiuzhihe': {
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[0]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[0]),
          },
        },
        'dierqiu': {
          'dierqiudaxiao': {
            'da': codeArr[1] > 4,
            'xiao': !(codeArr[1] > 4),
          },
          'dierqiudanshuang': {
            'dan': codeArr[1] % 2 > 0,
            'shuang': !(codeArr[1] % 2 > 0),
          },
          'dierqiuzhihe': {
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[1]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[1]),
          },
        },
        'disanqiu': {
          'disanqiudaxiao': {
            'da': codeArr[2] > 4,
            'xiao': !(codeArr[2] > 4),
          },
          'disanqiudanshuang': {
            'dan': codeArr[2] % 2 > 0,
            'shuang': !(codeArr[2] % 2 > 0),
          },
          'disanqiuzhihe': {
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[2]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[2]),
          },
        },
        'disiqiu': {
          'disiqiudaxiao': {
            'da': codeArr[3] > 4,
            'xiao': !(codeArr[3] > 4),
          },
          'disiqiudanshuang': {
            'dan': codeArr[3] % 2 > 0,
            'shuang': !(codeArr[3] % 2 > 0),
          },
          'disiqiuzhihe': {
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[3]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[3]),
          },
        },
        'diwuqiu': {
          'diwuqiudaxiao': {
            'da': codeArr[4] > 4,
            'xiao': !(codeArr[4] > 4),
          },
          'diwuqiudanshuang': {
            'dan': codeArr[4] % 2 > 0,
            'shuang': !(codeArr[4] % 2 > 0),
          },
          'diwuqiuzhihe': {
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[4]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[4]),
          },
        },
      };
    },
  },
  '02': {
    'xuanhao': (Map<String, dynamic> params) {
      final codeArr = params['codeArr'];
      final sum = params['sum'];
      return {
        'diyiqiu': {
          'diyiqiudingweidan': {
            '0': codeArr[0] == 0,
            '1': codeArr[0] == 1,
            '2': codeArr[0] == 2,
            '3': codeArr[0] == 3,
            '4': codeArr[0] == 4,
            '5': codeArr[0] == 5,
            '6': codeArr[0] == 6,
            '7': codeArr[0] == 7,
            '8': codeArr[0] == 8,
            '9': codeArr[0] == 9,
          },
        },
        'dierqiu': {
          'dierqiudingweidan': {
            '0': codeArr[1] == 0,
            '1': codeArr[1] == 1,
            '2': codeArr[1] == 2,
            '3': codeArr[1] == 3,
            '4': codeArr[1] == 4,
            '5': codeArr[1] == 5,
            '6': codeArr[1] == 6,
            '7': codeArr[1] == 7,
            '8': codeArr[1] == 8,
            '9': codeArr[1] == 9,
          },
        },
        'disanqiu': {
          'disanqiudingweidan': {
            '0': codeArr[2] == 0,
            '1': codeArr[2] == 1,
            '2': codeArr[2] == 2,
            '3': codeArr[2] == 3,
            '4': codeArr[2] == 4,
            '5': codeArr[2] == 5,
            '6': codeArr[2] == 6,
            '7': codeArr[2] == 7,
            '8': codeArr[2] == 8,
            '9': codeArr[2] == 9,
          },
        },
        'disiqiu': {
          'disiqiudingweidan': {
            '0': codeArr[3] == 0,
            '1': codeArr[3] == 1,
            '2': codeArr[3] == 2,
            '3': codeArr[3] == 3,
            '4': codeArr[3] == 4,
            '5': codeArr[3] == 5,
            '6': codeArr[3] == 6,
            '7': codeArr[3] == 7,
            '8': codeArr[3] == 8,
            '9': codeArr[3] == 9,
          },
        },
        'diwuqiu': {
          'diwuqiudingweidan': {
            '0': codeArr[4] == 0,
            '1': codeArr[4] == 1,
            '2': codeArr[4] == 2,
            '3': codeArr[4] == 3,
            '4': codeArr[4] == 4,
            '5': codeArr[4] == 5,
            '6': codeArr[4] == 6,
            '7': codeArr[4] == 7,
            '8': codeArr[4] == 8,
            '9': codeArr[4] == 9,
          },
        },
      };
    },
  },
  '03': {
    'qianzhonghousan': {
      'after': (List arr) {
          return arr.map((v) => flatten(v)).toList();
      },
      'fn':(params) {
        var codeArr = params['codeArr'];
        var sum = params['sum'];

        return {
          'qiansan': {
            'qiansanbaozi': {
              'baozi': baozi(codeArr.sublist(0, 3)),
            },
            'qiansanshunzi': {
              'shunzi': shunzi(codeArr.sublist(0, 3)),
            },
            'qiansanduizi': {
              'duizi': duizi(codeArr.sublist(0, 3)),
            },
            'qiansanbanshun': {
              'banshun': banshun(codeArr.sublist(0, 3)),
            },
            'qiansanzaliu': {
              'zaliu': zaliu(codeArr.sublist(0, 3)),
            }
          },
          'zhongsan': {
            'zhongsanbaozi': {
              'baozi': baozi(codeArr.sublist(1, 4)),
            },
            'zhongsanshunzi': {
              'shunzi': shunzi(codeArr.sublist(1, 4)),
            },
            'zhongsanduizi': {
              'duizi': duizi(codeArr.sublist(1, 4)),
            },
            'zhongsanbanshun': {
              'banshun': banshun(codeArr.sublist(1, 4)),
            },
            'zhongsanzaliu': {
              'zaliu': zaliu(codeArr.sublist(1, 4)),
            }
          },
          'housan': {
            'housanbaozi': {
              'baozi': baozi(codeArr.sublist(2, 5)),
            },
            'housanshunzi': {
              'shunzi': shunzi(codeArr.sublist(2, 5)),
            },
            'housanduizi': {
              'duizi': duizi(codeArr.sublist(2, 5)),
            },
            'housanbanshun': {
              'banshun': banshun(codeArr.sublist(2, 5)),
            },
            'housanzaliu': {
              'zaliu': zaliu(codeArr.sublist(2, 5)),
            }
          },
        };
      }
    }
   }
  };