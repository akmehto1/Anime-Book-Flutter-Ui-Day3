import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget childWidget;
  const FadeAnimation(this.delay,this.childWidget);


  @override
  Widget build(BuildContext context) {
    final tween1 = MovieTween()
      ..tween('width', Tween(begin: 0.0, end: 100),
          duration: const Duration(milliseconds: 1500), curve: Curves.easeIn)
          .thenTween('width', Tween(begin: 100.0, end: 200.0),
          duration: const Duration(milliseconds: 750), curve: Curves.easeOut);

    return PlayAnimationBuilder<Movie>(
      tween: tween1, // Pass in tween
      duration: tween1.duration, // Obtain duration
      builder: (context, value, childs) {
        return Container(
          child:childWidget,
        );
      },
    );
  }
}
