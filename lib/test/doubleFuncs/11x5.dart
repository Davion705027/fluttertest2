var syxw = {
  '01': {
    'shuangmian': (params){
      var codeArr = params['codeArr'];
      var sum = params['sum'];
      return {
        'zonghe': {
          'zonghedaxiao': {
            'da': sum > 30,
            'xiao': sum < 30,
          },
          'zonghedanshuang': {
            'dan': sum % 2 != 0,
            'shuang': sum % 2 == 0,
          },
          'zonghelonghu': {
            'long': codeArr[0] > codeArr[4],
            'hu': !(codeArr[0] > codeArr[4]),
          },
          'zongheweidaxiao': {
            'weixiao': (sum % 10) < 5,
            'weida': !((sum % 10) < 5),
          },
        },
        'diyiqiu': {
          'diyiqiudaxiao': {
            'da': codeArr[0] > 5 && codeArr[0] != 11,
            'xiao': !(codeArr[0] > 5),
          },
          'diyiqiudanshuang': {
            'dan': codeArr[0] % 2 != 0 && codeArr[0] != 11,
            'shuang': codeArr[0] % 2 == 0,
          },
          'diyiqiudingweidan': {
            '1': codeArr[0] == 1,
            '2': codeArr[0] == 2,
            '3': codeArr[0] == 3,
            '4': codeArr[0] == 4,
            '5': codeArr[0] == 5,
            '6': codeArr[0] == 6,
            '7': codeArr[0] == 7,
            '8': codeArr[0] == 8,
            '9': codeArr[0] == 9,
            '10': codeArr[0] == 10,
            '11': codeArr[0] == 11,
          },
        },
        'dierqiu': {
          'dierqiudaxiao': {
            'da': codeArr[1] > 5 && codeArr[1] != 11,
            'xiao': !(codeArr[1] > 5),
          },
          'dierqiudanshuang': {
            'dan': codeArr[1] % 2 != 0 && codeArr[1] != 11,
            'shuang': codeArr[1] % 2 == 0,
          },
          'dierqiudingweidan': {
            '1': codeArr[1] == 1,
            '2': codeArr[1] == 2,
            '3': codeArr[1] == 3,
            '4': codeArr[1] == 4,
            '5': codeArr[1] == 5,
            '6': codeArr[1] == 6,
            '7': codeArr[1] == 7,
            '8': codeArr[1] == 8,
            '9': codeArr[1] == 9,
            '10': codeArr[1] == 10,
            '11': codeArr[1] == 11,
          },
        },
        'disanqiu': {
          'disanqiudaxiao': {
            'da': codeArr[2] > 5 && codeArr[2] != 11,
            'xiao': !(codeArr[2] > 5),
          },
          'disanqiudanshuang': {
            'dan': codeArr[2] % 2 != 0 && codeArr[2] != 11,
            'shuang': codeArr[2] % 2 == 0,
          },
          'disanqiudingweidan': {
            '1': codeArr[2] == 1,
            '2': codeArr[2] == 2,
            '3': codeArr[2] == 3,
            '4': codeArr[2] == 4,
            '5': codeArr[2] == 5,
            '6': codeArr[2] == 6,
            '7': codeArr[2] == 7,
            '8': codeArr[2] == 8,
            '9': codeArr[2] == 9,
            '10': codeArr[2] == 10,
            '11': codeArr[2] == 11,
          },
        },
        'disiqiu': {
          'disiqiudaxiao': {
            'da': codeArr[3] > 5 && codeArr[3] != 11,
            'xiao': !(codeArr[3] > 5),
          },
          'disiqiudanshuang': {
            'dan': codeArr[3] % 2 != 0 && codeArr[3] != 11,
            'shuang': codeArr[3] % 2 == 0,
          },
          'disiqiudingweidan': {
            '1': codeArr[3] == 1,
            '2': codeArr[3] == 2,
            '3': codeArr[3] == 3,
            '4': codeArr[3] == 4,
            '5': codeArr[3] == 5,
            '6': codeArr[3] == 6,
            '7': codeArr[3] == 7,
            '8': codeArr[3] == 8,
            '9': codeArr[3] == 9,
            '10': codeArr[3] == 10,
            '11': codeArr[3] == 11,
          },
        },
        'diwuqiu': {
          'diwuqiudaxiao': {
            'da': codeArr[4] > 5 && codeArr[4] != 11,
            'xiao': !(codeArr[4] > 5),
          },
          'diwuqiudanshuang': {
            'dan': codeArr[4] % 2 != 0 && codeArr[4] != 11,
            'shuang': codeArr[4] % 2 == 0,
          },
          'diwuqiudingweidan': {
            '1': codeArr[4] == 1,
            '2': codeArr[4] == 2,
            '3': codeArr[4] == 3,
            '4': codeArr[4] == 4,
            '5': codeArr[4] == 5,
            '6': codeArr[4] == 6,
            '7': codeArr[4] == 7,
            '8': codeArr[4] == 8,
            '9': codeArr[4] == 9,
            '10': codeArr[4] == 10,
            '11': codeArr[4] == 11,
          },
        },
      };
    }
  },

  '02': {
		'xuanhao': (params) {
      var codeArr = params['codeArr'];
      var sum = params['sum'];
			return {
				'diyiqiu': {
					'diyiqiudingweidan': {
						'1': codeArr[0] == 1,
						'2': codeArr[0] == 2,
						'3': codeArr[0] == 3,
						'4': codeArr[0] == 4,
						'5': codeArr[0] == 5,
						'6': codeArr[0] == 6,
						'7': codeArr[0] == 7,
						'8': codeArr[0] == 8,
						'9': codeArr[0] == 9,
						'10': codeArr[0] == 10,
						'11': codeArr[0] == 11
					}
				},
				'dierqiu': {
					'dierqiudingweidan': {
						'1': codeArr[1] == 1,
						'2': codeArr[1] == 2,
						'3': codeArr[1] == 3,
						'4': codeArr[1] == 4,
						'5': codeArr[1] == 5,
						'6': codeArr[1] == 6,
						'7': codeArr[1] == 7,
						'8': codeArr[1] == 8,
						'9': codeArr[1] == 9,
						'10': codeArr[1] == 10,
						'11': codeArr[1] == 11
					}
				},
				'disanqiu': {
					'disanqiudingweidan': {
						'1': codeArr[2] == 1,
						'2': codeArr[2] == 2,
						'3': codeArr[2] == 3,
						'4': codeArr[2] == 4,
						'5': codeArr[2] == 5,
						'6': codeArr[2] == 6,
						'7': codeArr[2] == 7,
						'8': codeArr[2] == 8,
						'9': codeArr[2] == 9,
						'10': codeArr[2] == 10,
						'11': codeArr[2] == 11
					}
				},
				'disiqiu': {
					'disiqiudingweidan': {
						'1': codeArr[3] == 1,
						'2': codeArr[3] == 2,
						'3': codeArr[3] == 3,
						'4': codeArr[3] == 4,
						'5': codeArr[3] == 5,
						'6': codeArr[3] == 6,
						'7': codeArr[3] == 7,
						'8': codeArr[3] == 8,
						'9': codeArr[3] == 9,
						'10': codeArr[3] == 10,
						'11': codeArr[3] == 11
					}
				},
				'diwuqiu': {
					'diwuqiudingweidan': {
						'1': codeArr[4] == 1,
						'2': codeArr[4] == 2,
						'3': codeArr[4] == 3,
						'4': codeArr[4] == 4,
						'5': codeArr[4] == 5,
						'6': codeArr[4] == 6,
						'7': codeArr[4] == 7,
						'8': codeArr[4] == 8,
						'9': codeArr[4] == 9,
						'10': codeArr[4] == 10,
						'11': codeArr[4] == 11
					}
				}
			};
		},
	},

  '03': {
    'renxuanbazhongwu':{
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'renxuanbazhongwu':{
            'renxuanbazhongwu':{
              'renxuanbazhongwu': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },
    'renxuaner': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'renxuaner':{
            'renxuaner':{
              'renxuaner': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },
    'renxuanliuzhongwu': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'renxuanliuzhongwu':{
            'renxuanliuzhongwu':{
              'renxuanliuzhongwu': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },
    'renxuansan': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'renxuansan':{
            'renxuansan':{
              'renxuansan': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },
    'renxuansi': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'renxuansi':{
            'renxuansi':{
              'renxuansi': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },
    'renxuanwu': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'renxuanwu':{
            'renxuanwu':{
              'renxuanwu': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },
    'renxuanyi': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'renxuanyi':{
            'renxuanyi':{
              'renxuanyi': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },

  },

  '04':{
     'qianerzuxuan': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'qianerzuxuan':{
            'qianerzuxuan':{
              'qianerzuxuan': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },
     'qiansanzuxuan': {
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'qiansanzuxuan':{
            'qiansanzuxuan':{
              'qiansanzuxuan': List.generate(11, (i) => codeArr.contains(i + 1))
            }
          }
        };
      },
      'after': (arr)=> arr[0][0]
    },  
  },

  '05':{
    'qianerzhixuan':{
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'qianerzhixuan':{
            'qianerzhixuan':{
              'qianerzhixuan': [
                List.generate(11,(i) => codeArr[0] == (i+1)),
                List.generate(11,(i) => codeArr[1] == (i+1)),
                List.generate(11,(i) => codeArr[2] == (i+1)),
              ]
            }
          }
        };
      },
      'after': (arr)=> arr[0][0][0]
    },
		'qiansanzhixuan':{
      'fn': (params){
        var codeArr = params['codeArr'];
        return {
          'qiansanzhixuan':{
            'qiansanzhixuan':{
              'qiansanzhixuan': [
                List.generate(11,(i) => codeArr[0] == (i+1)),
                List.generate(11,(i) => codeArr[1] == (i+1)),
                List.generate(11,(i) => codeArr[2] == (i+1)),
              ]
            }
          }
        };
      },
      'after': (arr)=> arr[0][0][0]
    }, 
  }

};