bool baozi(List t) => t[0] == t[1] && t[2] == t[1];

bool duizi(List arr) {
  return arr.toSet().length == 2;
}

bool shunzi(List arr) {
  arr.sort(); // 先排序
  return arr[2] - arr[1] == 1 && arr[1] - arr[0] == 1;
}

bool banshun(List arr) {
  arr.sort(); // 先排序
  return (arr[2] - arr[1] == 1 || arr[1] - arr[0] == 1) && !shunzi(arr);
}


bool zaliu(List t) => !duizi(t) && !banshun(t) && !shunzi(t) && !baozi(t);

// 扁平化数组
List flattenArr(dynamic n) {
  if (n is Map || n is List) {
    return n.expand<dynamic>((element) => flatten(element)).toList();
  } else {
    return [n];
  }
}

// 收集对象中所有的值
List flatternObj(Map map) {
  List values = [];

  map.forEach((key, value) {
    if (value is Map) {
      // 递归处理嵌套的 Map
      values.addAll(flatternObj(value));
    }else{
      values.add(value);
    }
  });

  return values;
}

// 传入对象或者数组 扁平化
List flatten(dynamic params){
  if(params is Map){
    return flatternObj(params);
  }else if(params is List){
    return flattenArr(params);
  }else{
    return [params];
  }
}

// lodash 的 get
dynamic getValFromPath(Map paramsMap, List<dynamic> pathList) {
    dynamic result = paramsMap;

    for (var key in pathList) {
      if (result is Map) {
        result = result[key];
      } else {
        return null; 
      }
    }

    return result;
}

int getSumByNum(arr) {
  return arr.fold(0, (prev, curr) => prev + curr);
}

// 获取数组中最大值
int getMax(List list){
  int max = 0;
  for(var i in list){
    if(i > max){
      max = i;
    }
  }
  return max;
}

bool hasVal(dynamic v){
  bool res = true;

  if(v == null || v == 0 || v == ''){
    res = false;
  }

  return res;
}