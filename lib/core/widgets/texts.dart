import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:store_app/core/colors/palette.dart';

class Texts extends StatelessWidget {
  const Texts({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.underline = false,
    this.alignment = TextAlign.left,
    this.height = 1,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    required this.color,
    this.padding,
    this.style,
  });

  final String text;
  final double fontSize;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final bool underline;
  final Color color;
  final double height;
  final int maxLines;
  final TextOverflow textOverflow;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;

  const Texts.semiBold({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.w800;

  const Texts.grey({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.grey,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.normal;

  const Texts.button({
    super.key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    required this.color,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
  }) : fontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: alignment,
        style: (style ?? GoogleFonts.inter()).copyWith(
          color: color,
          fontSize: fontSize.sp,
          height: height,
          fontWeight: fontWeight,
          decoration: underline ? TextDecoration.underline : TextDecoration.none,
        ),
        maxLines: maxLines,
        overflow: textOverflow,
        softWrap: true,
      ),
    );
  }
}
