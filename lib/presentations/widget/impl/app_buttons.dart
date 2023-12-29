import 'package:flutter/material.dart';
import 'package:openvpn/presentations/widget/index.dart';
import 'package:openvpn/resources/colors.dart';

class AppButtons extends StatelessWidget {
  const AppButtons({
    super.key,
    required this.text,
    this.icon,
    this.backgroundColor = AppColors.accent,
    this.onPressed,
    this.margin,
    this.height = 52,
    this.width,
    this.textColor = AppColors.onAccent,
  });

  final Widget? icon;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    late Widget child;
    if (icon != null) {
      child = ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          
        ),
        icon: icon!,
        label: AppLabelText(
          text: text,
          color: textColor,
        ),
      );
    } else {
      child = ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
         
        ),
        child: AppLabelText(
          text: text,
          color: textColor,
        ),
      );
    }
    return Container(
    decoration: BoxDecoration(gradient: LinearGradient(colors: AppColors.listgradient), borderRadius: BorderRadius.all(Radius.circular(25))),
      margin: margin,
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: width ?? double.infinity,
          height: height,
        ),
        child: child,
      ),
    );
  }
}
