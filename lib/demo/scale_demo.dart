import 'package:flutter/material.dart';

class ScaleDemo extends StatefulWidget {
  const ScaleDemo({Key? key}) : super(key: key);

  @override
  State<ScaleDemo> createState() => _ScaleDemoState();
}

class _ScaleDemoState extends State<ScaleDemo> {
  final double _originWidth = 200;
  late double _width = _originWidth;

  /// onScaleStart -> onScaleUpdate -> onScaleEnd
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: _onScaleStart,
      onScaleUpdate: _onScaleUpdate,
      onScaleEnd: _onScaleEnd,
      child: FlutterLogo(
        size: _width,
        duration: const Duration(milliseconds: 1),
      ),
    );
  }

  void _onScaleStart(ScaleStartDetails details) {
    print('OnScaleStart ${details.focalPoint}');
    print('OnScaleStart ${details.localFocalPoint}');
  }

  void _onScaleUpdate(ScaleUpdateDetails details) {
    print('OnScaleUpdate ${details.focalPoint}');
    print('OnScaleUpdate ${details.localFocalPoint}');
    print('OnScaleUpdate ${details.pointerCount}');
    print('OnScaleUpdate ${details.scale}');
    print('OnScaleUpdate ${details.horizontalScale}');
    print('OnScaleUpdate ${details.verticalScale}');
    print('OnScaleUpdate ${details.rotation}');
    setState(() {
      _width = _originWidth * details.scale.clamp(.8, 10);
    });
  }

  void _onScaleEnd(ScaleEndDetails details) {
    print('OnScaleEnd ${details.velocity}');
    print('OnScaleEnd ${details.pointerCount}');
  }
}
