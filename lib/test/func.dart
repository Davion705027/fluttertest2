class ExtendedFunction {
  Function _function;

  ExtendedFunction(this._function);

  Map<String, dynamic> _customProperties = {};

  operator [](String key) => _customProperties[key];
  operator []=(String key, dynamic value) => _customProperties[key] = value;

  call([args]) {
    // 根据需要在这里添加一些通用的处理逻辑
    print("Common logic before calling function");

    return Function.apply(_function, args);
  }
}

