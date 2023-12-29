import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:openvpn/resources/assets.gen.dart';

class CustomPretimum extends StatefulWidget {
  const CustomPretimum({super.key, required this.text});

  final String text;
  @override
  State<CustomPretimum> createState() => _CustomPretimumState();
}

class _CustomPretimumState extends State<CustomPretimum> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 10,),
        Icon(Icons.star, color: Colors.amber,) ,
        SizedBox(width: 10,),
        Text(widget.text, style: TextStyle(color: Colors.white),),
        
      ],
    );
  }
}