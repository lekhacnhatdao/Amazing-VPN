import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    this.child,
    this.color = Colors.transparent,
    this.height,
    this.margin,
    this.padding = const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 24,
    ),
  });

  final Widget? child;
  final Color? color;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: color,
      ),
      child: child,
    );
  }
}
