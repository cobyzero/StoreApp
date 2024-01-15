import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:store_app/core/widgets/texts.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.color,
    required this.textColor,
    required this.text,
    required this.onTap,
  });
  final Color color;
  final Color textColor;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 7.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Texts.button(
          text: text,
          fontSize: 6.sp,
          color: textColor,
        ),
      ),
    );
  }
}
