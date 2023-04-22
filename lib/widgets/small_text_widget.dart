import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overflow;
  Color? backgroundColor;
  SmallText(
      {Key? key,
        this.overflow=TextOverflow.ellipsis,
        this.height = 1.2,
        this.backgroundColor,
        this.color = CupertinoColors.black,
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
        backgroundColor: backgroundColor,
        height: height,
      ),
    );
  }
}
