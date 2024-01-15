

import 'dart:ffi';

import 'util.dart';
import 'standardFuncs/index.dart';
import 'doubleFuncs/index.dart';

final results = {};

// 标准盘使用：
// coldmissCalculator('standard', 292, historyList, lotteryList, [], 4, 10);
// 双面盘
// coldmissCalculator('double', 292, historyList, lotteryList, doublePlaylist, 4, 10);

// Map mapValues(Map input, dynamic Function(dynamic,String) transform) {
//   return Map.fromEntries(input.entries.map((entry) => MapEntry(entry.key, transform(entry.value, entry.key))));
// }
dynamic mapValues(dynamic input, dynamic Function(dynamic, dynamic) transform) {
  if (input is Map) {
    return Map.fromEntries(input.entries.map((entry) => MapEntry(entry.key, transform(entry.value, entry.key))));
  } else if (input is List) {
    return input.asMap().map((index, element) => MapEntry(index, transform(element, index))).values.toList();
  }
  return input;
}


// 从数组arr取索引i的值
getVal(arr,i){
  if(arr is! List){
    return arr;
  }
  int length = arr.length;

  if(i >= length){
    return 0;
  }else{
    var res = arr[i];
    if(res is List){
      return res;
    }else{
      return arr[i] ? 1 : 0;
    }

  } 
}

 dynamic getDoubleVal(arr, i) {
  dynamic res = 0;
  if(arr is List && arr.isEmpty)return 0;
  try{
    res = arr[i];
  }catch(e){
    print(e);
  }
  return res == true ? 1 : res == false ? 0: res;
}

dynamic calcMissStop(dynamic base, dynamic incoming) {
  if (base is! List) {
    return base;
  }

  return List.generate(base.length, (i) {
    var v = base[i];
    if (v is! List) {
      if(v is String){
        return v;
      }
      return v || incoming[i] ;
    } else {
      return calcMissStop(v, incoming[i]);
    }
  });


}

dynamic reverseAdaptorRes(List base, [bool firstIn = false]) {

  List resList = [];
  var res;

  for (int i = 0; i < base.length; i++) {
    var v = base[i];
    if(v is List){
      res = reverseAdaptorRes(v);
    }else{
      if(firstIn){
        res = v;
      }else{
        res = !v;
      }
    }
    resList.add(res);
  }
  return resList;
}

dynamic dmerge(dynamic base, dynamic incoming, [ missStop = const []]) {
  return mapValues(base,(v,i){
    if(v is List || v is Map) {
			return dmerge(v, incoming[i], getDoubleVal(missStop,i)==0 ? [] : missStop[i]);
		} else {
			// return v + (!missStop[i] && incoming[i]);
      var res;
      bool noMiss = getDoubleVal(missStop,i) > 0 ? false : true;
      int intV = v == true ? 1 : v == false ? 0 : v;
      res = intV;
      if( noMiss ){
        res +=  incoming[i] == true ? 1 : incoming[i] == false ? 0 : v;
      }
      return res;
		}      
  });
}

List<dynamic> flatternDeep(List<dynamic> list) {
  List<dynamic> flattenedList = [];
  
  for (var item in list) {
    if (item is List<dynamic>) {
      flattenedList.addAll(flatternDeep(item));
    } else {
      flattenedList.add(item);
    }
  }
  
  return flattenedList;
}



 dcalcMissStop( base, incoming) {
  return mapValues(base, (value, index) {
    if (value is List || value is Map) {
      return dcalcMissStop(value, incoming[index]);
    } else {
      return value || incoming[index];
    }
  });
}




dynamic dreverseAdaptorRes(dynamic base) {
  return mapValues(base, (value, index) {
    if (value is List || value is Map) {
      return dreverseAdaptorRes(value);
    } else {
      return !value;
    }
  });
}

dynamic preDeal(Map<String, dynamic> item) {
  final codeArr = item['code'].split(RegExp(r'[\-\s]')).map((v) => int.parse(v)).toList();
  final sum = codeArr.reduce((a, b) => a + b);
  return {'codeArr': codeArr, 'sum': sum, ...item};
}
// 标准盘
List merge( base, incoming, missStop, [bool firstIn = false]) {
  List resList = [];
  if(missStop is! List){
    missStop = [];
  }
  for (int i = 0; i < base.length; i++) {
    var v = base[i];
    var res;

    if (v is! List) {
      if (firstIn == true) {
        res =  v;
      } else {
        // var v = getVal(missStop,i);
        
        bool noMiss = getVal(missStop,i) == 1 ? false : true;
        int intV = v == true ? 1 : v == false ? 0 : v;
        res = intV;
        if( noMiss ){
          res += getVal(incoming,i);
        }
        // res = v + (!missStop[i] && incoming[i]);
      }
    } else {
      res = merge(v, incoming[i], getVal(missStop,i));
    }
    resList.add(res);

  }
   return resList;
}

// 标准盘
dynamic coldmisser(List<dynamic> historyList, dynamic adapObj, String planNo) {
  if(adapObj == null){
    throw Exception('玩法未配置');
  }
  var adaptor = adapObj['fn'];
  if (adaptor == null) {
    return {};
  }
  var adapParams = preDeal(historyList[0]);
  final r = adaptor(adapParams);
  var missStop = r;
  final res = {
    '20Q': r,
    '50Q': r,
    '100Q': r,
    'miss': reverseAdaptorRes(r, true),
  };
  for (var i = 1; i < historyList.length; i++) {
    final r = adaptor(preDeal(historyList[i]));
    if (i < 20) {
      res['20Q'] = merge(res['20Q'], r, [],true);
    }
    if (i < 50) {
      res['50Q'] = merge(res['50Q'], r, [],true);
    }
    if (i < 100) {
      res['100Q'] = merge(res['100Q'], r, [],true);
    } else if (flatten(missStop).every((v) => v)) {
      break;
    }
   
    res['miss'] = merge(res['miss'], reverseAdaptorRes(r, true), missStop, true);
    missStop = calcMissStop(missStop, r);
  }
  final keys = adapObj['keys'];
  Map<String,dynamic> obj = {
    '20Q': {},
    '50Q': {},
    '100Q': {},
    'miss': {},
    'planNo': ''
  };
  print(keys);
  for (var i = 0; i < keys.length; i++) {
    obj['20Q']![keys[i]] = res['20Q'][i];
    obj['50Q']![keys[i]] = res['50Q'][i];
    obj['100Q']![keys[i]] = res['100Q'][i];
    obj['miss']![keys[i]] = res['miss'][i];
  }

  obj['planNo'] = planNo;
  return obj;
}

mergeFilter( filterObj,  obj) {
  return mapValues(filterObj,(v,k){
    if(v is Map && obj[k] != null){
      return mergeFilter(filterObj[k], obj[k]);
    }else{
      var res;
      try{
        res = obj[k];
      }catch(e){
        print(obj);
        print(k);
        print(e);
      }
      
      return res;
    }
  });
}

dynamic desolve2Array(dynamic obj) {
  final keys = obj.keys.toList();
  if (int.tryParse(keys[0]) == keys[0]) {
    keys.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
  }
  return keys.map((v) {
    final value = obj[v];
    if (value is Map && value['playItemId'] == null) {
      return desolve2Array(value);
    } else {
      return value;
    }
  }).where((v) => v != null).toList();
}

dynamic doubleColdmisser(List<dynamic> historyList, dynamic adaptorObj, String planNo, dynamic filterObj) {

  var adaptor;
  var afterFn;
  if(adaptorObj is Function){
    adaptor = adaptorObj;
  }else if(adaptorObj is Map){
    adaptor = adaptorObj['fn'];
    afterFn = adaptorObj['after'];
  }
  if(adaptor == null)return;

  final r = adaptor(preDeal(historyList[0]));
  var missStop = r;
  final res = {
    '20q': r,
    '50q': r,
    '100q': r,
    'miss': dreverseAdaptorRes(r),
    'planNo': planNo,
  };
  for (var i = 1; i < historyList.length; i++) {
    final r = adaptor(preDeal(historyList[i]));
    if (i < 20) {
      res['20q'] = dmerge(res['20q'], r);
    }
    if (i < 50) {
      res['50q'] = dmerge(res['50q'], r);
    }
    if (i < 100) {
      res['100q'] = dmerge(res['100q'], r);
    } else if (flatten(missStop).every((v) => v)) {
      break;
    }
    res['miss'] = dmerge(res['miss'], dreverseAdaptorRes(r), missStop);
    // 合并两个数组 有true为true
    missStop = dcalcMissStop(missStop, r);
  }
  res['20q'] = desolve2Array(mergeFilter(filterObj, res['20q'])).where((v) => v != null).toList();
  res['50q'] = desolve2Array(mergeFilter(filterObj, res['50q'])).where((v) => v != null).toList();
  res['100q'] = desolve2Array(mergeFilter(filterObj, res['100q'])).where((v) => v != null).toList();
  res['miss'] = desolve2Array(mergeFilter(filterObj, res['miss'])).where((v) => v != null).toList();
  if (afterFn != null) {
    res['20q'] = afterFn(res['20q']);
    res['50q'] = afterFn(res['50q']);
    res['100q'] = afterFn(res['100q']);
    res['miss'] = afterFn(res['miss']);
  }
  return res;
}


dynamic playFunc;

dynamic coldmissCalculator(String handicap, int ticketId, List<dynamic> historyList, List<dynamic> lotteryList, List<dynamic> doublePlayList, int changlongMin, int changlongMax) {
  print('ticketId: $ticketId');
  if (historyList.isEmpty || lotteryList.isEmpty || ticketId == null || (handicap == 'double' && doublePlayList.isEmpty)) {
    return null;
  }
  if (playFunc == null) {
    playFunc = {};
    for (var v in lotteryList) {
      v['ticketTypeList'].forEach((v1) {
        if(v1['code'] == 'SD'){
          print(1);
          
        }
        playFunc[v1['ticketId']] = {};
        playFunc[v1['ticketId']]['double'] = doubleFuncs[v1['code']];
        playFunc[v1['ticketId']]['standard'] = standardFuncs[v1['code']];
        // playFunc[v1['ticketId']]['changlong'] = changlongFuncs[v1['code']];
        results[v1['ticketId']] = {};
        results[v1['ticketId']]['double'] = null;
        results[v1['ticketId']]['standard'] = null;
        results[v1['ticketId']]['changlong'] = null;
      });
    }
  }
  if (results[ticketId] != null && results[ticketId][handicap] != null && results[ticketId][handicap]['planNo'] == historyList[0]['issue']) {
    return results[ticketId][handicap];
  }
  
  String ts = ticketId.toString();
  int len = ts.length;
  switch (handicap) {
    case 'double':
      Map<dynamic, dynamic> filterObj;
      Map<dynamic, dynamic> playList = doublePlayList.fold({}, (prev, value) {
        if (prev[value['playId']] == null ) {
          prev[value['playId']] = [];
        }
        prev[value['playId']].add(value['subCatalog'].fold({}, (p1, v1) {
          filterObj = v1['list'].fold({}, (p2, v2) {
            p2[v2['playCode']] = v2['list'].fold({}, (p3, v3) {
              p3[v3['playCode']] = v3['list'].fold({}, (p4, v4) {
                p4[v4['playCode']] = null;
                return p4;
              });
              return p3;
            });
            return p2;
          });

          var adaptor = getValFromPath(playFunc,[ticketId,handicap,value['playId'].toString().substring(len),v1['playCode']]);

          if (adaptor != null) {
            p1[v1['playCode']] = doubleColdmisser(historyList, adaptor, historyList[0]['issue'], filterObj);
          }
          return p1;
        }));
        return prev;
      });
      playList['planNo'] = historyList[0]['issue'];
      results[ticketId][handicap] = playList;
      break;
    case 'standard':
      results[ticketId][handicap] = coldmisser(historyList, playFunc?[ticketId][handicap], historyList[0]['issue']);
      break;
  }
  final res = results[ticketId][handicap];
  return res;
}
