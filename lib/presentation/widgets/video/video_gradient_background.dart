import 'package:flutter/material.dart';

class VideoGradientBackground extends StatelessWidget {
  const VideoGradientBackground({super.key});


  final List<Color> colors = const [
    Colors.transparent,
    Colors.black87,
  ];

  // Size of colors should be equal to the size of stops
  final List<double> stops = const [0.5, 0.94]; 

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: stops))),
      );
  }
}
