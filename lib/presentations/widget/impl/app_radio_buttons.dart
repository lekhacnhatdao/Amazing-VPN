import 'package:flutter/material.dart';
import 'package:openvpn/presentations/widget/index.dart';
import 'package:openvpn/resources/colors.dart';

class AppRadioButtons extends StatelessWidget {
  const AppRadioButtons({
    super.key,
    required this.title,
    required this.summary,
    this.isChecked = false,
    this.onPressed,
  });

  final String title;
  final String summary;
  final Function()? onPressed;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.itemBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16) +
          const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLabelText(text: title,),
                AppBodyText(
                  text: summary,
                  color: AppColors.textSecondary,
                )
              ],
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              isChecked
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: AppColors.textPrimary,
            ),
          )
        ],
      ),
    );
  }
}
