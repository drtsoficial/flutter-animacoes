import 'package:flutter/material.dart';

class TweenWave extends StatelessWidget {
  const TweenWave(
      {Key? key,
      required this.barScale,
      required this.barHeight,
      required this.updateScale,
      required this.waveDuration})
      : super(key: key);

  final double barScale;
  final double barHeight;
  final void Function(double) updateScale;
  final int waveDuration;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .2, end: barScale),
      duration: Duration(milliseconds: waveDuration),
      curve: Curves.ease,
      onEnd: () {
        barScale == 1 ? updateScale(.2) : updateScale(1);
      },
      builder: (_, double value, __) {
        return Padding(
          padding: const EdgeInsets.only(right: 2),
          child: Transform.scale(
            scaleY: value,
            origin: Offset(5, barHeight / 2),
            child: Container(
              color: Colors.white,
              width: 10,
              height: barHeight,
            ),
          ),
        );
      },
    );
  }
}
