import 'package:athlink/Common/AppText/AppTextView.dart';
import 'package:athlink/Theme/colors.dart';
import 'package:flutter/material.dart';

class PrimaryBTN extends StatelessWidget {
  final double width;
  final String title;
  final VoidCallback? callback;
  final double height;
  final double fontSize;
  final double borderRadius;
  final bool isGradiant;
  final LinearGradient? gradient;
  final Color color;
  final Color textCLR;
  final FontWeight fontWeight;

  const PrimaryBTN({
    Key? key,
    this.borderRadius = 10,
    required this.callback,
    required this.color,
    this.fontSize = 14,
    this.fontWeight = FontWeight.bold,
    this.height = 50,
    this.gradient,
    this.isGradiant = false,
    this.textCLR = Colors.white,
    required this.title,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: height,
        width: width,
        decoration: isGradiant == false
            ? BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(borderRadius))
            : BoxDecoration(
                color: color,
                gradient: gradient ??
                    const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          AppColor.secondaryColor,
                          AppColor.primaryColor,
                        ]),
                borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: CustomText(
              title: title,
              color: textCLR,
              size: fontSize,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}
