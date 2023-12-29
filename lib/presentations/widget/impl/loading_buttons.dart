import 'package:flutter/material.dart';
import 'package:openvpn/presentations/widget/index.dart';
import 'package:openvpn/resources/colors.dart';

class LoadingButtons extends StatelessWidget {
  const LoadingButtons({
    super.key,
    required this.isLoading,
    required this.icon,
    required this.text,
    this.backgroundColor = AppColors.accent,
    this.height = 52,
    this.onPressed,
    this.margin,
    required this.icondata,
    required this.changeUI,
  });

  final bool isLoading;
  final bool changeUI;
  final IconData icondata;
  final Widget icon;
  final String text;
  final Color backgroundColor;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 35, 35, 35),
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Stack(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // ignore: lines_longer_than_80_chars
                  gradient: LinearGradient(
                    colors: isLoading
                        ? [
                            const Color(0xffBF00B5),
                            const Color(0xffFFA555),
                          ]
                        : changeUI
                            ? [
                                const Color(0xffBF00B5),
                                const Color(0xffFFA555),
                              ]
                            : [
                                const Color(0xff0575E6),
                                const Color(0xff00F260)
                              ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 20,
              bottom: 20,
              child: Container(
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 44, 44, 44),
                ),
                padding: const EdgeInsets.all(10),
                child: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => LinearGradient(
                    
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: isLoading
                        ? [Color(0xffFFFFFF), Color(0xffFFFFFF)]
                        : changeUI
                            ? [Color(0xffBF00B5),
                                Color(0xffFFA555),
                                
                              ]
                            : [Color(0xff0575E6), Color(0xff00F260)],
                  ).createShader(bounds),
                  child: isLoading
                      ? Center(
                          child: Text(
                          text,
                        ))
                      : Icon(
                          icondata,
                          size: 80,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
