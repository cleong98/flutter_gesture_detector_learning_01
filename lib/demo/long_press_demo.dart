import 'package:flutter/material.dart';

class LongPressDemo extends StatelessWidget {
  const LongPressDemo({Key? key}) : super(key: key);

  /// onLongPresStart -> onLongPress -> onLongPressMoveUpdate -> onLongPressEnd -> onLongPressUp
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: _onLongPressStart,
      onLongPress: _onLongPress,
      onLongPressMoveUpdate: _onLongPressMoveUpdate,
      onLongPressEnd: _onLongPressEnd,
      onLongPressUp: _onLongPressUp,

      child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    );
  }

  void _onLongPress() {
    print('onLongPress');
  }

  void _onLongPressStart(LongPressStartDetails details) {
    print('onLongPressStart ${details.localPosition}');
    print('onLongPressStart ${details.globalPosition}');
  }

  void _onLongPressMoveUpdate(LongPressMoveUpdateDetails details) {
    print('onLongPressMoveUpdate ${details.localPosition}');
    print('onLongPressMoveUpdate ${details.globalPosition}');
    print('onLongPressMoveUpdate ${details.offsetFromOrigin}');
    print('onLongPressMoveUpdate ${details.localOffsetFromOrigin}');
  }

  void _onLongPressEnd(LongPressEndDetails details) {
    print('onLongPressEnd ${details.localPosition}');
    print('onLongPressEnd ${details.globalPosition}');
    print('onLongPressEnd ${details.velocity}');
  }

  void _onLongPressUp() {
    print('onLongPressUp');
  }
}
