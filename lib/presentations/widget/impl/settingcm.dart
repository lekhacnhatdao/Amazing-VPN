import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettinGCT extends StatefulWidget {
  const SettinGCT(
      {super.key,
      this.backgroundColor,
      required this.text,
      this.version,
      this.onTap,
      this.isPre,
      required this.svg});
  final Color? backgroundColor;
  final String text;
  final bool? version;
  final Function()? onTap;
  final bool? isPre;
  final String svg;

  @override
  State<SettinGCT> createState() => _SettinGCTState();
}

class _SettinGCTState extends State<SettinGCT> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: widget.backgroundColor ?? Colors.black,
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/images/${widget.svg}'),
            const SizedBox(
              width: 5,
            ),
            Text(widget.text),
            const Spacer(),
            widget.version ?? false
                ? Text('V2.5') : widget.isPre ?? false ?Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffFB5607),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Text('Try now', style: TextStyle(color: Colors.white),),
                ) 
                : Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}
