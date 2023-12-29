import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Custombackground extends StatefulWidget {
  const Custombackground({super.key, required this.widget});
  final Widget widget;
  @override
  State<Custombackground> createState() => _CustombackgroundState();
}

class _CustombackgroundState extends State<Custombackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: double.infinity,
            decoration:  BoxDecoration(
                color: Colors.black.withOpacity(0.85),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Layer 1.png'),
                  fit: BoxFit.fill,
                )),
            child: widget.widget);
  }
}