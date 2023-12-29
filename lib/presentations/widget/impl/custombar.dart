import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// class CustomBar extends StatefulWidget {
//   const CustomBar({super.key, required this.lenght, this.onSelect,required this.icon, this.color});
//   final int lenght;
//   final Function(int) ? onSelect;
//   final List<IconData>  icon;
//   final Color ? color;
//   @override
//   State<CustomBar> createState() => _CustomBarState();
// }

// class _CustomBarState extends State<CustomBar> {
//   @override
//   Widget build(BuildContext context) {
//     return CustomBottomBar(lengthItem: widget.lenght, onSelect:widget.onSelect,listIcon: widget.icon ,backgroundColor: widget.color);
//   }

// }
class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    super.key,
    this.onSelect,
    this.colorUnSelect = Colors.grey,
    required this.listIcon,
    this.backgroundColor,
    this.height = 70,
    required this.controller,
  });

  final TabController controller;

  final void Function(int index)? onSelect;
  final Color colorUnSelect;
  final List<IconData> listIcon;
  final Color? backgroundColor;
  final double height;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int valSelect = 1;
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        widget.controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor ?? const Color(0xff1A1919),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: widget.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            widget.controller.length,
            (index) => GestureDetector(
                  child: buildItem(
                      isSelected: index == widget.controller.index,
                      iconData: widget.listIcon[index]),
                  onTap: () {
                    setState(() {
                      widget.controller.index = index;
                      widget.onSelect?.call(widget.controller.index);
                    });
                  },
                )),
      ),
    );
  }

  Widget buildItem({IconData iconData = Icons.abc, bool isSelected = false}) {
    return Container(
      width: 50,
      height: 40,
      decoration: isSelected
          ? BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Color(0xffBF00B5).withOpacity(0.1),
                spreadRadius: 0.1,
                blurRadius: 10,
              )
            ])
          : null,
      child: Center(
        child: isSelected
            ? ShaderMask(
                shaderCallback: (Rect bounds) => const LinearGradient(
                        colors: [Color(0xffBF00B5), Color(0xffFFA555)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    .createShader(bounds),
                child: Icon(
                  iconData,
                  size: 24,
                  color: Colors.white,
                ),
              )
            : Icon(
                iconData,
                size: 24,
                color: widget.colorUnSelect,
              ),
      ),
    );
  }
}
