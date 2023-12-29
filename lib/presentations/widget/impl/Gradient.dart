import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Cstmgradient extends StatefulWidget {
  const Cstmgradient({super.key, required this.color, this.child, this.begin, this.end});
  final List<Color> color;
  final Widget ? child;
  final Alignment ? begin ;
  final Alignment ? end ;
  @override
  State<Cstmgradient> createState() => _CstmgradientState();
}

class _CstmgradientState extends State<Cstmgradient> {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => LinearGradient(
                    begin: widget.begin ?? Alignment.topCenter,
                    end: widget.end ?? Alignment.bottomCenter,
                    colors:widget.color,

                  ).createShader(bounds), child:widget.child,);
  }
}