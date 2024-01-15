var sd = {
  '01': {
    'liangmian': (params) {
      var codeArr = params['codeArr'];
      var sum = params['sum'];
      return {
        'bai': {
          'baiwei': {
            'da': codeArr[0] > 4,
            'xiao': !(codeArr[0] > 4),
            'dan': codeArr[0] % 2 > 0,
            'shuang': !(codeArr[0] % 2 > 0),
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[0]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[0]),
          },
        },
        'shi': {
          'shiwei': {
            'da': codeArr[1] > 4,
            'xiao': !(codeArr[1] > 4),
            'dan': codeArr[1] % 2 > 0,
            'shuang': !(codeArr[1] % 2 > 0),
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[1]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[1]),
          },
        },
        'ge': {
          'gewei': {
            'da': codeArr[2] > 4,
            'xiao': !(codeArr[2] > 4),
            'dan': codeArr[2] % 2 > 0,
            'shuang': !(codeArr[2] % 2 > 0),
            'zhi': [1, 2, 3, 5, 7].contains(codeArr[2]),
            'hen': ![1, 2, 3, 5, 7].contains(codeArr[2]),
          },
        },
        'baishi': {
          'baishiwei': {
            'hedan': (codeArr[0] + codeArr[1]) % 2 > 0,
            'heshuang': !((codeArr[0] + codeArr[1]) % 2 > 0),
            'heweida': (codeArr[0] + codeArr[1]) % 10 > 4,
            'heweixiao': !((codeArr[0] + codeArr[1]) % 10 > 4),
            'heweizhi':
                [1, 2, 3, 5, 7].contains((codeArr[0] + codeArr[1]) % 10),
            'heweihe':
                ![1, 2, 3, 5, 7].contains((codeArr[0] + codeArr[1]) % 10),
          },
        },
        'baige': {
          'baigewei': {
            'hedan': (codeArr[0] + codeArr[2]) % 2 > 0,
            'heshuang': !((codeArr[0] + codeArr[2]) % 2 > 0),
            'heweida': (codeArr[0] + codeArr[2]) % 10 > 4,
            'heweixiao': !((codeArr[0] + codeArr[2]) % 10 > 4),
            'heweizhi':
                [1, 2, 3, 5, 7].contains((codeArr[0] + codeArr[2]) % 10),
            'heweihe':
                ![1, 2, 3, 5, 7].contains((codeArr[0] + codeArr[2]) % 10),
          },
        },
        'shige': {
          'shigewei': {
            'hedan': (codeArr[2] + codeArr[1]) % 2 > 0,
            'heshuang': !((codeArr[2] + codeArr[1]) % 2 > 0),
            'heweida': (codeArr[2] + codeArr[1]) % 10 > 4,
            'heweixiao': !((codeArr[2] + codeArr[1]) % 10 > 4),
            'heweizhi':
                [1, 2, 3, 5, 7].contains((codeArr[2] + codeArr[1]) % 10),
            'heweihe':
                ![1, 2, 3, 5, 7].contains((codeArr[2] + codeArr[1]) % 10),
          },
        },
        'baishige': {
          'baishigewei': {
            'heda': (codeArr[0] + codeArr[1] + codeArr[2]) > 13,
            'hexiao': !((codeArr[0] + codeArr[1] + codeArr[2]) > 13),
            'hedan': (codeArr[0] + codeArr[1] + codeArr[2]) % 2 > 0,
            'heshuang': !((codeArr[0] + codeArr[1] + codeArr[2]) % 2 > 0),
            'heweida': (codeArr[0] + codeArr[1] + codeArr[2]) % 10 > 4,
            'heweixiao': !((codeArr[0] + codeArr[1] + codeArr[2]) % 10 > 4),
            'heweizhi': [1, 2, 3, 5, 7]
                .contains((codeArr[0] + codeArr[1] + codeArr[2]) % 10),
            'heweihe': ![1, 2, 3, 5, 7]
                .contains((codeArr[0] + codeArr[1] + codeArr[2]) % 10),
          },
        },
      };
    },
  }
};
