import 'package:flutter/material.dart';

class PanDemo extends StatefulWidget {
  const PanDemo({Key? key}) : super(key: key);

  @override
  State<PanDemo> createState() => _PanDemoState();
}

class _PanDemoState extends State<PanDemo> {

  double _left = 0;
  double _top = 0;

  /// onPanDown -> onPanStart -> onPanUpdate -> onPanEnd
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            onPanDown: _onPanDown,
            onPanStart: _onPanStart,
            onPanUpdate: _onPanUpdate,
            onPanEnd: _onPanEnd,
            onPanCancel: _onPanCancel,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ],
    );
  }

  void _onPanDown(DragDownDetails details) {
    print('onPanDown ${details.globalPosition}');
    print('onPanDown ${details.localPosition}');
  }

  void _onPanStart(DragStartDetails details) {
    print('onPanStart ${details.globalPosition}');
    print('onPanStart ${details.localPosition}');
    print('onPanStart ${details.sourceTimeStamp}');
    print('onPanStart ${details.kind}');
  }

  void _onPanUpdate(DragUpdateDetails details) {
    print('onPanUpdate ${details.globalPosition}');
    print('onPanUpdate ${details.localPosition}');
    print('onPanUpdate ${details.sourceTimeStamp}');
    print('onPanUpdate ${details.delta}');
    print('onPanUpdate ${details.primaryDelta}');
    setState(() {
      _top += details.delta.dy;
      _left += details.delta.dx;
    });
  }

  void _onPanEnd(DragEndDetails details) {
    print('onPanEnd ${details.velocity}');
    print('onPanEnd ${details.primaryVelocity}');
  }

  void _onPanCancel() {
    print('onPanCancel');
  }
}
