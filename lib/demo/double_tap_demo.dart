import 'package:flutter/material.dart';

class DoubleTapDemo extends StatelessWidget {
  const DoubleTapDemo({Key? key}) : super(key: key);

  /// onDoubleTapDown -> onDoubleTap
  /// if cancel onDoubleTapDown -> onDoubleTapCancel
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTapDown: _onDoubleTapDown,
      onDoubleTap: _onDoubleTap,
      onDoubleTapCancel: _onDoubleTapCancel,
      child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    );
  }

  void _onDoubleTap() {
    print('onDoubleTap');
  }

  void _onDoubleTapDown(TapDownDetails details) {
    print('onDoubleTapDown ${details.globalPosition}');
    print('onDoubleTapDown ${details.localPosition}');
    print('onDoubleTapDown ${details.kind}');
  }

  void _onDoubleTapCancel() {
    print('onDoubleTapCancel');
  }
}
