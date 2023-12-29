import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {
  const AppTitleText({
    super.key,
    this.size,
    required this.text,
    this.color,
    this.textAlign,
  });

  final double? size;
  final String text;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: size,
            color: color,
          ),
    );
  }
}
