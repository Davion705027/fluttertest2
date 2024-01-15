import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('layout')),
      body: Column(
        children: [
          const Text('Row'),
          Container(
            color: Colors.yellow[150],
            child: const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.up,
                children: [
                  Chip(
                    label: Text('111'),
                    avatar: CircleAvatar(
                        backgroundColor: Colors.pink, child: Text('A')),
                  ),
                  SizedBox(width: 20),
                  Chip(
                    label: Text('222'),
                    avatar: CircleAvatar(
                        backgroundColor: Colors.pink, child: Text('B')),
                  ),
                ]),
          ),
          const Text('Flex horizontal'),
          Flex(direction: Axis.horizontal, children: [
            Expanded(
              flex: 2,
              child: Container(color: Colors.green, child: Text('111')),
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.red, child: Text('222')),
            )
          ]),
          const Text('Flex vertical'),
          SizedBox(
            height: 100,
            child: Flex(direction: Axis.vertical, children: [
              Expanded(
                flex: 2,
                child: Container(color: Colors.green, child: Text('111')),
              ),
              Expanded(
                flex: 3,
                child: Container(color: Colors.red, child: Text('222')),
              )
            ]),
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: const LayoutLogPrint(
                  child: Center(
                      // alignment: Alignment(0,0),
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('logo'),
                      FlutterLogo(
                        size: 40,
                      ),
                    ],
                  )),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 80,
                    height: 80,

                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20), // 设置圆角半径
                    ),
                    // decoration: const BoxDecoration(
                    //   borderRadius: BorderRadius.all(Radius.circular(20))
                    // ),
                    child: Center(
                      child: Stack(
                        children: [
                          const Positioned.fill(
                            child: Text("1"),
                          ),
                          Positioned(
                            top: -10,
                            right: -10,
                            child: Container(
                              width: 20,
                              height: 20,
                              color: Colors.pink,
                            ),
                          ),
                          const Center(
                              // alignment: Alignment(0,0),
                              child: Column(
                            mainAxisSize: MainAxisSize.min,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('logo'),
                              FlutterLogo(
                                size: 40,
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
             
            ],
          ),

          
        ],
      ),
    );
  }
}

class LayoutLogPrint extends StatelessWidget {
  const LayoutLogPrint({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        print(
            'LayoutBuilder constraints: ${constraints.maxWidth} x ${constraints.maxHeight}');
        return child;
      },
    );
  }
}
