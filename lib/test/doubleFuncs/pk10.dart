var pk10 = {
  '01': {
    'liangmian': (params){
      var codeArr = params['codeArr'];
      return {
        'guanyajunhe': {
				'guanyajunheda': {
					'da': codeArr[0] + codeArr[1] > 11,
					'xiao': !(codeArr[0] + codeArr[1] > 11),
				},
				'guanyajunhedan': {
					'dan': (codeArr[0] + codeArr[1]) % 2 > 0,
					'shuang': !((codeArr[0] + codeArr[1]) % 2 > 0),
				}
			},
			'guanjun': {
				'diyiqiudaxiao': {
					'da': codeArr[0] > 5,
					'xiao': !(codeArr[0] > 5),
				},
				'diyiqiudanshuang': {
					'dan': codeArr[0] % 2 > 0,
					'shuang': !(codeArr[0] % 2 > 0),
				},
				'diyiqiulonghu': {
					'long': codeArr[0] > codeArr[9],
					'hu': !(codeArr[0] > codeArr[9]),
				}
			},
			'yajun': {
				'dierqiudaxiao': {
					'da': codeArr[1] > 5,
					'xiao': !(codeArr[1] > 5),
				},
				'dierqiudanshuang': {
					'dan': codeArr[1] % 2 > 0,
					'shuang': !(codeArr[1] % 2 > 0),
				},
				'dierqiulonghu': {
					'long': codeArr[1] > codeArr[8],
					'hu': !(codeArr[1] > codeArr[8]),
				}
			},
			'disanming': {
				'disanqiudaxiao': {
					'da': codeArr[2] > 5,
					'xiao': !(codeArr[2] > 5),
				},
				'disanqiudanshuang': {
					'dan': codeArr[2] % 2 > 0,
					'shuang': !(codeArr[2] % 2 > 0),
				},
				'disanqiulonghu': {
					'long': codeArr[2] > codeArr[7],
					'hu': !(codeArr[2] > codeArr[7]),
				}
			},
			'disiming': {
				'disiqiudaxiao': {
					'da': codeArr[3] > 5,
					'xiao': !(codeArr[3] > 5),
				},
				'disiqiudanshuang': {
					'dan': codeArr[3] % 2 > 0,
					'shuang': !(codeArr[3] % 2 > 0),
				},
				'disiqiulonghu': {
					'long': codeArr[3] > codeArr[6],
					'hu': !(codeArr[3] > codeArr[6]),
				}
			},
			'diwuming': {
				'diwuqiudaxiao': {
					'da': codeArr[4] > 5,
					'xiao': !(codeArr[4] > 5),
				},
				'diwuqiudanshuang': {
					'dan': codeArr[4] % 2 > 0,
					'shuang': !(codeArr[4] % 2 > 0),
				},
				'diwuqiulonghu': {
					'long': codeArr[4] > codeArr[5],
					'hu': !(codeArr[4] > codeArr[5]),
				}
			},
			'diliuming': {
				'diliuqiudaxiao': {
					'da': codeArr[5] > 5,
					'xiao': !(codeArr[5] > 5),
				},
				'diliuqiudanshuang': {
					'dan': codeArr[5] % 2 > 0,
					'shuang': !(codeArr[5] % 2 > 0),
				},
			},
			'diqiming': {
				'diqiqiudaxiao': {
					'da': codeArr[6] > 5,
					'xiao': !(codeArr[6] > 5),
				},
				'diqiqiudanshuang': {
					'dan': codeArr[6] % 2 > 0,
					'shuang': !(codeArr[6] % 2 > 0),
				},
			},
			'dibaming': {
				'dibaqiudaxiao': {
					'da': codeArr[7] > 5,
					'xiao': !(codeArr[7] > 5),
				},
				'dibaqiudanshuang': {
					'dan': codeArr[7] % 2 > 0,
					'shuang': !(codeArr[7] % 2 > 0),
				},
			},
			'dijiuming': {
				'dijiuqiudaxiao': {
					'da': codeArr[8] > 5,
					'xiao': !(codeArr[8] > 5),
				},
				'dijiuqiudanshuang': {
					'dan': codeArr[8] % 2 > 0,
					'shuang': !(codeArr[8] % 2 > 0),
				},
			},
			'dishiming': {
				'dishiqiudaxiao': {
					'da': codeArr[9] > 5,
					'xiao': !(codeArr[9] > 5),
				},
				'dishiqiudanshuang': {
					'dan': codeArr[9] % 2 > 0,
					'shuang': !(codeArr[9] % 2 > 0),
				},
			},
      };
    }
  },
  '02':{
    'danhao': (params){
      var codeArr = params['codeArr'];
      return {
        'guanjun': {
          'guanjundingweidan': {
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
          },
        },
        'yajun': {
          'yajundingweidan': {
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
          },
        },
        'disanming': {
          'disanmingdingweidan': {
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
          },
        },
        'disiming': {
          'disimingdingweidan': {
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
          },
        },
        'diwuming': {
          'diwumingdingweidan': {
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
          },
        },
        'diliuming': {
          'diliumingdingweidan': {
            '1': codeArr[5] == 1,
            '2': codeArr[5] == 2,
            '3': codeArr[5] == 3,
            '4': codeArr[5] == 4,
            '5': codeArr[5] == 5,
            '6': codeArr[5] == 6,
            '7': codeArr[5] == 7,
            '8': codeArr[5] == 8,
            '9': codeArr[5] == 9,
            '10': codeArr[5] == 10,
          },
        },
        'diqiming': {
          'diqimingdingweidan': {
            '1': codeArr[6] == 1,
            '2': codeArr[6] == 2,
            '3': codeArr[6] == 3,
            '4': codeArr[6] == 4,
            '5': codeArr[6] == 5,
            '6': codeArr[6] == 6,
            '7': codeArr[6] == 7,
            '8': codeArr[6] == 8,
            '9': codeArr[6] == 9,
            '10': codeArr[6] == 10,
          },
        },
        'dibaming': {
          'dibamingdingweidan': {
            '1': codeArr[7] == 1,
            '2': codeArr[7] == 2,
            '3': codeArr[7] == 3,
            '4': codeArr[7] == 4,
            '5': codeArr[7] == 5,
            '6': codeArr[7] == 6,
            '7': codeArr[7] == 7,
            '8': codeArr[7] == 8,
            '9': codeArr[7] == 9,
            '10': codeArr[7] == 10,
          },
        },
        'dijiuming': {
          'dijiumingdingweidan': {
            '1': codeArr[8] == 1,
            '2': codeArr[8] == 2,
            '3': codeArr[8] == 3,
            '4': codeArr[8] == 4,
            '5': codeArr[8] == 5,
            '6': codeArr[8] == 6,
            '7': codeArr[8] == 7,
            '8': codeArr[8] == 8,
            '9': codeArr[8] == 9,
            '10': codeArr[8] == 10,
          },
        },
        'dishiming': {
          'dishimingdingweidan': {
            '1': codeArr[9] == 1,
            '2': codeArr[9] == 2,
            '3': codeArr[9] == 3,
            '4': codeArr[9] == 4,
            '5': codeArr[9] == 5,
            '6': codeArr[9] == 6,
            '7': codeArr[9] == 7,
            '8': codeArr[9] == 8,
            '9': codeArr[9] == 9,
            '10': codeArr[9] == 10,
          },
        },
      }; 
    }
  },
  '03':{
    'guanyahezhi':(params){
      var codeArr = params['codeArr'];
      return {
        'guanyajunhe': {
          'guanyahezhisan': codeArr[0] + codeArr[1] == 3,
          'guanyahezhisi': codeArr[0] + codeArr[1] == 4,
          'guanyahezhiwu': codeArr[0] + codeArr[1] == 5,
          'guanyahezhiliu': codeArr[0] + codeArr[1] == 6,
          'guanyahezhiqi': codeArr[0] + codeArr[1] == 7,
          'guanyahezhiba': codeArr[0] + codeArr[1] == 8,
          'guanyahezhijiu': codeArr[0] + codeArr[1] == 9,
          'guanyahezhishi': codeArr[0] + codeArr[1] == 10,
          'guanyahezhishiyi': codeArr[0] + codeArr[1] == 11,
          'guanyahezhishier': codeArr[0] + codeArr[1] == 12,
          'guanyahezhishisan': codeArr[0] + codeArr[1] == 13,
          'guanyahezhishisi': codeArr[0] + codeArr[1] == 14,
          'guanyahezhishiwu': codeArr[0] + codeArr[1] == 15,
          'guanyahezhishiliu': codeArr[0] + codeArr[1] == 16,
          'guanyahezhishiqi': codeArr[0] + codeArr[1] == 17,
          'guanyahezhishiba': codeArr[0] + codeArr[1] == 18,
          'guanyahezhishijiu': codeArr[0] + codeArr[1] == 19,
        }
      };
    }
  }
};