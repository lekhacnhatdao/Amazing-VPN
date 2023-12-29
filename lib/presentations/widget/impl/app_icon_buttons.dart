import 'package:flutter/material.dart';

class AppIconButtons extends StatelessWidget {
  const AppIconButtons({
    super.key,
    this.onPressed,
    required this.icon,
  });

  final Function()? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        width: 32,
        height: 32,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: icon,
      ),
    );
  }
}
