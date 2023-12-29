import 'package:flutter/material.dart';

class BounceButtons extends StatefulWidget {
  const BounceButtons({super.key, required this.child, required this.onPress});

  final Widget child;
  final VoidCallback? onPress;

  @override
  State<BounceButtons> createState() => _BounceButtonsState();
}

class _BounceButtonsState extends State<BounceButtons>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      upperBound: 0.1,
    );
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        if (widget.onPress != null) {
          _controller.forward();
        }
      },
      onPointerUp: (PointerUpEvent event) {
        if (widget.onPress != null) {
          _controller.reverse();
          widget.onPress!();
        }
      },
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
