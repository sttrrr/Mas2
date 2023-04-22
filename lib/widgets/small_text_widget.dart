import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overflow;
  SmallText(
      {Key? key,
        this.overflow=TextOverflow.ellipsis,
        this.height = 1.2,
        this.color = const Color(0xFFccc7c5),
        this.size = 12,
        required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
        maxLines: 2,
      style: TextStyle(
        overflow: overflow,
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,
      ),
    );
  }
}
