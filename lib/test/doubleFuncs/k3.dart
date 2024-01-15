var k3 = {
    '0101': {
      'sanjundaxiao': (params) {
        var codeArr = params['codeArr'];
        var sum = params['sum'];
        return {
          'sanjundaxiao': {
            'sanjun': {
              '1': codeArr.contains(1),
              '2': codeArr.contains(2),
              '3': codeArr.contains(3),
              '4': codeArr.contains(4),
              '5': codeArr.contains(5),
              '6': codeArr.contains(6),
            },
            'daxiao': {
              'da': sum > 10,
              'xiao': !(sum > 10),
            }
          }
        };
      }
    },
    '02': {
      'yuxiaxietoubao': (params) {
        var codeArr = params['codeArr'];
        return {
          'yuxiaxietoubao': {
            'yuxiaxietoubao': {
              'yu': codeArr.contains(1),
              'xia': codeArr.contains(2),
              'hulu': codeArr.contains(3),
              'jinxian': codeArr.contains(4),
              'xie': codeArr.contains(5),
              'ji': codeArr.contains(6),
            }
          }
        };
      }
    },
  };