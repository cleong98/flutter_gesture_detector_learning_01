import 'package:flutter/material.dart';

class TapDemo extends StatelessWidget {
  const TapDemo({Key? key}) : super(key: key);

  /// onTapDown -> onTapUp -> onTap
  /// if cancel onTapDown -> onTapCancel
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTap: _onTap,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
    );
  }

  void _onTap() {
    print('onTap');
  }

  void _onTapDown(TapDownDetails details) {
    print('onTapDown ${details.globalPosition}');
    print('onTapDown ${details.localPosition}');
    print('onTapDown ${details.kind}');
  }

  void _onTapCancel() {
    print('onTapCancel');
  }

  void _onTapUp(TapUpDetails details) {
    print('onTapUp ${details.globalPosition}');
    print('onTapUp ${details.localPosition}');
    print('onTapUp ${details.kind}');
  }
}
