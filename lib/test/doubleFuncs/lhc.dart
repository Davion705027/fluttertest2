import '../LHCHelper.dart';

var lhc = {
  '01': {
    'liangmian': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        // var sum = params['sum'];
        // var code = params['code'];
        var saleStartTime = params['saleStartTime'];

        int tema = codeArr[6];
        int he = codeArr[6] % 10 + (codeArr[6] ~/ 10);
        String tx = countYearShengXiao(codeArr[6], saleStartTime);
        bool da = tema > 24 && tema != 49;
        bool xiao = !(tema > 24);
        bool dan = tema % 2 > 0 && tema != 49;
        bool shuang = !(tema % 2 > 0);

        return {
          'liangmian': {
            'daxiaodanshuang': {
              'da': da,
              'xiao': xiao,
              'dan': dan,
              'shuang': shuang,
            },
            'temahedaxiao': {
              'heda': he > 6 && tema != 49,
              'hexiao': !(he > 6),
            },
            'temahedanshuang': {
              'hedan': he % 2 > 0 && tema != 49,
              'heshuang': !(he % 2 > 0),
            },
            'tematiandixiao': {
              'tianxiao': tianDiXiao
                  .firstWhere((v) => v['name'] == '天')['list']
                  .contains(tx),
              'dixiao': tianDiXiao
                  .firstWhere((v) => v['name'] == '地')['list']
                  .contains(tx),
            },
            'temaqianhouxiao': {
              'qianxiao': qianHouXiao
                  .firstWhere((v) => v['name'] == '前')['list']
                  .contains(tx),
              'houxiao': qianHouXiao
                  .firstWhere((v) => v['name'] == '后')['list']
                  .contains(tx),
            },
            'temajiayexiao': {
              'jiaxiao': jiaYeXiao
                  .firstWhere((v) => v['name'] == '家')['list']
                  .contains(tx),
              'yexiao': jiaYeXiao
                  .firstWhere((v) => v['name'] == '野')['list']
                  .contains(tx),
            },
            'temaweidaxiao': {
              'weida': codeArr[6] % 10 > 4 && codeArr[6] != 49,
              'weixiao': !(codeArr[6] % 10 > 4),
            },
            'temadaxiaodanshuang': {
              'dadan': da && dan,
              'xiaodan': xiao && dan,
              'dashuang': da && shuang,
              'xiaoshuang': xiao && shuang,
            },
          },
        };
      },
      'after': (List arr) => arr[0],
    },
    'haoma': (params) {
      var codeArr = params['codeArr'];
      var tema = codeArr[6];
      var temadingweidan = {};
      for (var i = 1; i <= 49; i++) {
        var key = i.toString().padLeft(2, '0');
        temadingweidan[key] = tema == i;
      }
      return {
        'haoma': {
          'temadingweidan': temadingweidan,
        },
      };
    },
    'sebobanbo': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var code = params['code'];
        var temabo = code.split(' ')[6];
        var tema = codeArr[6];
        bool red = sebo_red.contains(temabo);
        bool blue = sebo_blue.contains(temabo);
        bool green = sebo_green.contains(temabo);
        bool da = tema > 24;
        bool dan = tema % 2 > 0;
        bool sijiu = tema == 49;

        return {
          'sebobanbo': {
            'bose': {
              'hongbo': red,
              'lanbo': blue,
              'lvbo': green,
            },
            'banbo': {
              'hongdan': red && dan && !sijiu,
              'landan': blue && dan && !sijiu,
              'lvdan': green && dan && !sijiu,
              'hongshuang': red && !dan && !sijiu,
              'lanshuang': blue && !dan && !sijiu,
              'lvshuang': green && !dan && !sijiu,
              'hongda': red && da && !sijiu,
              'landa': blue && da && !sijiu,
              'lvda': green && da && !sijiu,
              'hongxiao': red && !da && !sijiu,
              'lanxiao': blue && !da && !sijiu,
              'lvxiao': green && !da && !sijiu,
            },
            'banbanbo': {
              'hongdadan': red && da && dan && !sijiu,
              'landadan': blue && da && dan && !sijiu,
              'lvdadan': green && da && dan && !sijiu,
              'hongdashuang': red && da && !dan && !sijiu,
              'landashuang': blue && da && !dan && !sijiu,
              'lvdashuang': green && da && !dan && !sijiu,
              'hongxiaodan': red && !da && dan && !sijiu,
              'lanxiaodan': blue && !da && dan && !sijiu,
              'lvxiaodan': green && !da && dan && !sijiu,
              'hongxiaoshuang': red && !da && !dan && !sijiu,
              'lanxiaoshuang': blue && !da && !dan && !sijiu,
              'lvxiaoshuang': green && !da && !dan && !sijiu,
            },
          },
        };
      },
      'after': (List arr) => arr[0],
    },
    'texiaotouweixiao': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var saleStartTime = params['saleStartTime'];
        int wei = codeArr[6] % 10;
        int tou = codeArr[6] ~/ 10;
        String tx = countYearShengXiao(codeArr[6], saleStartTime);

        return {
          'texiaotouweixiao': {
            'texiao': {
              'niu': tx == shengxiao[1],
              'hu': tx == shengxiao[2],
              'tu': tx == shengxiao[3],
              'long': tx == shengxiao[4],
              'she': tx == shengxiao[5],
              'ma': tx == shengxiao[6],
              'yang': tx == shengxiao[7],
              'hou': tx == shengxiao[8],
              'ji': tx == shengxiao[9],
              'gou': tx == shengxiao[10],
              'zhu': tx == shengxiao[11],
              'shu': tx == shengxiao[0],
            },
            'toushu': {
              'lingtou': tou == 0,
              'yitou': tou == 1,
              'ertou': tou == 2,
              'santou': tou == 3,
              'sitou': tou == 4,
            },
            'weishu': {
              'lingwei': wei == 0,
              'yiwei': wei == 1,
              'erwei': wei == 2,
              'sanwei': wei == 3,
              'siwei': wei == 4,
              'wuwei': wei == 5,
              'liuwei': wei == 6,
              'qiwei': wei == 7,
              'bawei': wei == 8,
              'jiuwei': wei == 9,
            },
          },
        };
      },
      'after': (List arr) => arr[0],
    },
    'hexiao': (params) {
      var codeArr = params['codeArr'];
      var saleStartTime = params['saleStartTime'];
      var tx = countYearShengXiao(codeArr[6], saleStartTime);
      return {
        'hexiao': {
          'temahexiao': {
            'yixiao': tx == shengxiao[0],
            'erxiao': tx == shengxiao[1],
            'sanxiao': tx == shengxiao[2],
            'sixiao': tx == shengxiao[3],
            'wuxiao': tx == shengxiao[4],
            'liuxiao': tx == shengxiao[5],
            'qixiao': tx == shengxiao[6],
            'baxiao': tx == shengxiao[7],
            'jiuxiao': tx == shengxiao[8],
            'shixiao': tx == shengxiao[9],
            'shiyixiao': tx == shengxiao[10],
            'shierxiao': tx == shengxiao[11],
          },
        },
      };
    },
    'wuxing': (params) {
      var codeArr = params['codeArr'];
      var sum = params['sum'];
      return {
        'wuxing': {
          'wuxing': {
            'jin': findBallsToWuxingIndex(codeArr[6]) == 'jin',
            'mu': findBallsToWuxingIndex(codeArr[6]) == 'mu',
            'shui': findBallsToWuxingIndex(codeArr[6]) == 'shui',
            'huo': findBallsToWuxingIndex(codeArr[6]) == 'huo',
            'tu': findBallsToWuxingIndex(codeArr[6]) == 'tu',
          },
        },
      };
    },
  },
  '02': {
    'zhengmarenxuanyi': (params) {
      var codeArr = params['codeArr'];
      var zhengma = codeArr.sublist(0, 6);
      var zhengmarenxuanyi = {};
      for (var i = 1; i <= 49; i++) {
        var key = i.toString().padLeft(2, '0');
        zhengmarenxuanyi[key] = zhengma.contains(i);
      }
      return {
        'zhengmarenxuanyi': {
          'zhengmarenxuanyi': zhengmarenxuanyi,
        },
      };
    },
    'zhengxiaoyidaoliu': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        List arr = codeArr.sublist(0, 6).map((v) {
          String bo = v.toString().padLeft(2, '0');
          bool red = sebo_red.contains(bo);
          bool blue = sebo_blue.contains(bo);
          bool green = sebo_green.contains(bo);
          bool da = v > 24;
          bool dan = v % 2 > 0;
          int wei = v % 10;
          int tou = v ~/ 10;
          bool weida = wei > 4;
          bool heda = tou + wei > 6;
          bool hedan = (tou + wei) % 2 > 0;
          bool sijiu = v == 49;

          return {
            'dan': dan && !sijiu,
            'shuang': !dan && !sijiu,
            'da': da && !sijiu,
            'xiao': !da && !sijiu,
            'hedan': hedan && !sijiu,
            'heshuang': !hedan && !sijiu,
            'heda': heda && !sijiu,
            'hexiao': !heda && !sijiu,
            'weida': weida && !sijiu,
            'weixiao': !weida && !sijiu,
            'hongbo': red,
            'lvbo': green,
            'lanbo': blue,
          };
        }).toList();

        return {
          'zhengxiaoyidaoliu': {
            'zhengmayi': arr[0],
            'zhengmaer': arr[1],
            'zhengmasan': arr[2],
            'zhengmasi': arr[3],
            'zhengmawu': arr[4],
            'zhengmaliu': arr[5],
          },
        };
      },
      'after': (List arr) => arr[0],
    },
    'zhengxiaoqisebo': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var saleStartTime = params['saleStartTime'];
        String tm = codeArr[6].toString().padLeft(2, '0');
        var zhengbo = codeArr.sublist(0, 6).fold({
          'red': 0,
          'blue': 0,
          'green': 0,
        }, (prev, value) {
          String formattedValue = value.toString().padLeft(2, '0');
          prev['red'] = (prev['red'] as int) +
              (sebo_red.contains(formattedValue) ? 1 : 0);
          prev['blue'] = (prev['blue'] as int) +
              (sebo_blue.contains(formattedValue) ? 1 : 0);
          prev['green'] = (prev['green'] as int) +
              (sebo_green.contains(formattedValue) ? 1 : 0);
          return prev;
        });
        bool tred = sebo_red.contains(tm);
        bool tblue = sebo_blue.contains(tm);
        bool tgreen = sebo_green.contains(tm);
        bool heju = false;
        bool green = false;
        bool red = false;
        bool blue = false;

        if ((zhengbo['red'] == 3 && zhengbo['blue'] == 3 && tgreen) ||
            (zhengbo['green'] == 3 && zhengbo['blue'] == 3 && tred) ||
            (zhengbo['red'] == 3 && zhengbo['green'] == 3 && tblue)) {
          heju = true;
        } else {
          var redValue = zhengbo['red']! + (tred ? 1.5 : 0);
          var blueValue = zhengbo['blue']! + (tblue ? 1.5 : 0);
          var greenValue = zhengbo['green']! + (tgreen ? 1.5 : 0);
          red = redValue > blueValue && redValue > greenValue;
          blue = blueValue > redValue && blueValue > greenValue;
          green = greenValue > blueValue && greenValue > redValue;
        }

        return {
          'zhengxiaoqisebo': {
            'zhengxiao': codeArr.sublist(0, 6).fold({
              'niu': false,
              'hu': false,
              'tu': false,
              'long': false,
              'she': false,
              'ma': false,
              'yang': false,
              'hou': false,
              'ji': false,
              'gou': false,
              'zhu': false,
              'shu': false,
            }, (prev, value) {
              var selectedShengxiao = countYearShengXiao(value, saleStartTime);

              if (selectedShengxiao == shengxiao[0]) {
                prev['shu'] = true;
              } else if (selectedShengxiao == shengxiao[1]) {
                prev['niu'] = true;
              } else if (selectedShengxiao == shengxiao[2]) {
                prev['hu'] = true;
              } else if (selectedShengxiao == shengxiao[3]) {
                prev['tu'] = true;
              } else if (selectedShengxiao == shengxiao[4]) {
                prev['long'] = true;
              } else if (selectedShengxiao == shengxiao[5]) {
                prev['she'] = true;
              } else if (selectedShengxiao == shengxiao[6]) {
                prev['ma'] = true;
              } else if (selectedShengxiao == shengxiao[7]) {
                prev['yang'] = true;
              } else if (selectedShengxiao == shengxiao[8]) {
                prev['hou'] = true;
              } else if (selectedShengxiao == shengxiao[9]) {
                prev['ji'] = true;
              } else if (selectedShengxiao == shengxiao[10]) {
                prev['gou'] = true;
              } else if (selectedShengxiao == shengxiao[11]) {
                prev['zhu'] = true;
              }

              return prev;
            }),
            'qisebo': {
              'hongbo': red,
              'lanbo': blue,
              'lvbo': green,
              'heju': heju,
            },
          },
        };
      },
      'after': (List arr) => arr[0],
    },
  },
  '03': {
    'zhengyite': (params) {
      var codeArr = params['codeArr'];
      var res = Map.fromEntries(List.generate(50, (i) {
        var key = i.toString().padLeft(2, '0');
        return MapEntry(key, codeArr[0] == i);
      }));
      return {
        'zhengyite': {
          'zhengmayidingweidan': res,
        },
      };
    },
    'zhengerte': (params) {
      var codeArr = params['codeArr'];
      var res = Map.fromEntries(List.generate(50, (i) {
        var key = i.toString().padLeft(2, '0');
        return MapEntry(key, codeArr[1] == i);
      }));
      return {
        'zhengerte': {
          'zhengmaerdingweidan': res,
        },
      };
    },
    'zhengsante': (params) {
      var codeArr = params['codeArr'];
      var res = Map.fromEntries(List.generate(50, (i) {
        var key = i.toString().padLeft(2, '0');
        return MapEntry(key, codeArr[2] == i);
      }));
      return {
        'zhengsante': {
          'zhengmasandingweidan': res,
        },
      };
    },
    'zhengsite': (params) {
      var codeArr = params['codeArr'];
      var res = Map.fromEntries(List.generate(50, (i) {
        var key = i.toString().padLeft(2, '0');
        return MapEntry(key, codeArr[3] == i);
      }));
      return {
        'zhengsite': {
          'zhengmasidingweidan': res,
        },
      };
    },
    'zhengwute': (params) {
      var codeArr = params['codeArr'];
      var res = Map.fromEntries(List.generate(50, (i) {
        var key = i.toString().padLeft(2, '0');
        return MapEntry(key, codeArr[4] == i);
      }));
      return {
        'zhengwute': {
          'zhengmawudingweidan': res,
        },
      };
    },
    'zhengliute': (params) {
      var codeArr = params['codeArr'];
      var res = Map.fromEntries(List.generate(50, (i) {
        var key = i.toString().padLeft(2, '0');
        return MapEntry(key, codeArr[5] == i);
      }));
      return {
        'zhengliute': {
          'zhengmaliudingweidan': res,
        },
      };
    },
  },
  '04': {
    'erlianxiao': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var saleStartTime = params['saleStartTime'];
        var tx =
            codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
        var res = shengxiao.map((v) => tx.indexOf(v) != -1).toList().toList();
        return {
          'erlianxiao': {
            'zhengtemaerlianxiao': {
              'renxuanerxiao': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'sanlianxiao': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var saleStartTime = params['saleStartTime'];
        var tx =
            codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
        var res = shengxiao.map((v) => tx.indexOf(v) != -1).toList();
        return {
          'sanlianxiao': {
            'zhengtemasanlianxiao': {
              'rexuansanxiao': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'silianxiao': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var saleStartTime = params['saleStartTime'];
        var tx =
            codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
        var res = shengxiao.map((v) => tx.indexOf(v) != -1).toList();
        return {
          'silianxiao': {
            'zhengtemasilianxiao': {
              'renxuansixiao': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'wulianxiao': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var saleStartTime = params['saleStartTime'];
        var tx =
            codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
        var res = shengxiao.map((v) => tx.indexOf(v) != -1).toList();
        return {
          'wulianxiao': {
            'zhengtemawulianxiao': {
              'renxuanwuxiao': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'erlianwei': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var wei = codeArr.map((v) => v % 10).toList();
        var res = List.generate(10, (i) => wei.contains(i));
        return {
          'erlianwei': {
            'zhengtemaerlianwei': {
              'renxuanerwei': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'sanlianwei': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var wei = codeArr.map((v) => v % 10).toList();
        var res = List.generate(10, (i) => wei.contains(i));
        return {
          'sanlianwei': {
            'zhengtemasanlianwei': {
              'renxuansanwei': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'silianwei': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var wei = codeArr.map((v) => v % 10).toList();
        var res = List.generate(10, (i) => wei.contains(i));
        return {
          'silianwei': {
            'zhengtemasilianwei': {
              'renxuansiwei': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'wulianwei': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var wei = codeArr.map((v) => v % 10).toList();
        var res = List.generate(10, (i) => wei.contains(i));
        return {
          'wulianwei': {
            'zhengtemawulianwei': {
              'renxuanwuwei': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
  },
  '05': {
    'sanzhonger': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var arr = codeArr.sublist(0, 6);
        var res = Map.fromEntries(List.generate(50, (i) {
          var key = i.toString().padLeft(2, '0');
          return MapEntry(key, arr.contains(i));
        }));
        res.remove('00');
        return {
          'sanzhonger': {
            'zhengmasanzhonger': {
              'sanzhonger': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'sanquanzhong': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var arr = codeArr.sublist(0, 6);
        var res = Map.fromEntries(List.generate(50, (i) {
          var key = i.toString().padLeft(2, '0');
          return MapEntry(key, arr.contains(i));
        }));
        res.remove('00');
        return {
          'sanquanzhong': {
            'zhengmasanquanzhong': {
              'sanquanzhong': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'erquanzhong': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var arr = codeArr.sublist(0, 6);
        var res = Map.fromEntries(List.generate(50, (i) {
          var key = i.toString().padLeft(2, '0');
          return MapEntry(key, arr.contains(i));
        }));
        res.remove('00');
        return {
          'erquanzhong': {
            'zhengmaerquanzhong': {
              'erquanzhong': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'erzhongte': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var res = Map.fromEntries(List.generate(50, (i) {
          var key = i.toString().padLeft(2, '0');
          return MapEntry(key, codeArr.contains(i));
        }));
        res.remove('00');
        return {
          'erzhongte': {
            'zhengtemaerzhongte': {
              'erzhongte': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'techuang': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var res = Map.fromEntries(List.generate(50, (i) {
          var key = i.toString().padLeft(2, '0');
          return MapEntry(key, codeArr.contains(i));
        }));
        res.remove('00');
        return {
          'techuang': {
            'zhengtematechuang': {
              'techuang': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
    'siquanzhong': {
      'fn': (params) {
        var codeArr = params['codeArr'];
        var arr = codeArr.sublist(0, 6);
        var res = Map.fromEntries(List.generate(50, (i) {
          var key = i.toString().padLeft(2, '0');
          return MapEntry(key, arr.contains(i));
        }));
        res.remove('00');
        return {
          'siquanzhong': {
            'zhengmasiquanzhong': {
              'siquanzhong': res,
            },
          },
        };
      },
      'after': (arr) => arr[0],
    },
  },
  '06': {
    'yixiao': (params) {
      final codeArr = params['codeArr'];
      final saleStartTime = params['saleStartTime'];
      final sx =
          codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
      return {
        'yixiao': {
          'yixiao': {
            'niu': sx.contains(shengxiao[1]),
            'hu': sx.contains(shengxiao[2]),
            'tu': sx.contains(shengxiao[3]),
            'long': sx.contains(shengxiao[4]),
            'she': sx.contains(shengxiao[5]),
            'ma': sx.contains(shengxiao[6]),
            'yang': sx.contains(shengxiao[7]),
            'hou': sx.contains(shengxiao[8]),
            'ji': sx.contains(shengxiao[9]),
            'gou': sx.contains(shengxiao[10]),
            'zhu': sx.contains(shengxiao[11]),
            'shu': sx.contains(shengxiao[0]),
          },
        },
      };
    },
    'zongxiao': (params) {
      final codeArr = params['codeArr'];
      final saleStartTime = params['saleStartTime'];
      final sx =
          codeArr.map((v) => countYearShengXiao(v, saleStartTime)).toList();
      final zx = Set.from(sx).length;
      return {
        'zongxiao': {
          'zongxiao_zhengtemaerxiao': {
            'erxiao': zx == 2,
            'sanxiao': zx == 3,
            'sixiao': zx == 4,
            'wuxiao': zx == 5,
            'liuxiao': zx == 6,
            'qixiao': zx == 7,
          },
          'zongxiao_zongxiaodanshuang': {
            'dan': zx % 2 > 0,
            'shuang': !(zx % 2 > 0),
          },
        },
      };
    },
    'weishu': (params) {
      final codeArr = params['codeArr'];
      final saleStartTime = params['saleStartTime'];
      final wei = codeArr.map((v) => v % 10).toList();
      return {
        'weishu': {
          'weishu': {
            'lingwei': wei.contains(0),
            'yiwei': wei.contains(1),
            'erwei': wei.contains(2),
            'sanwei': wei.contains(3),
            'siwei': wei.contains(4),
            'wuwei': wei.contains(5),
            'liuwei': wei.contains(6),
            'qiwei': wei.contains(7),
            'bawei': wei.contains(8),
            'jiuwei': wei.contains(9),
          },
        },
      };
    },
  },
  '07': {
    'zonghe': (params) {
      final sum = params['sum'];
      return {
        'zonghe': {
          'zonghedaxiao': {'da': sum > 175, 'xiao': sum < 175},
          'zonghedanshuang': {'dan': sum % 2 > 0, 'shuang': !(sum % 2 > 0)},
        },
      };
    },
  },
  '08': {
    'zixuanbuzhong': {
      'fn': (params) {
        final codeArr = params['codeArr'];
        final res = List<bool>.generate(49, (i) => codeArr.contains(i + 1));
        return {
          'zixuanbuzhong': {
            'zhengtemazixuanbuzhongww': {'wuhao': res},
          },
        };
      },
      'after': (arr) => arr[0][0]
    }
  }
};
