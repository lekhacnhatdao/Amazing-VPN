import 'package:flutter/material.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/resources/icondata.dart';

class AppLabelText extends StatelessWidget {
  const AppLabelText({
    super.key,
    this.size = 14,
     this.text,
    this.color = AppColors.textPrimary,
     this.icon,  this.coloricon,
  });

  final double size;
  final String ? text;
  final Color color;
  final IconData ? icon;
  final Color ? coloricon;

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: coloricon,),
        SizedBox(width: 8,),
        Text(
          text ??'',
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontSize: size,
                color: color,
                
              ),
        ),
      ],
    );
  }
}
