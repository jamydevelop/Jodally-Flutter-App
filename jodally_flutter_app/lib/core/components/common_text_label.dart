import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class CommonTextLabel extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final String? fontFamily;
  final TextAlign? textAlign;
  final int? maxLines; // Added maxLines property
  final TextOverflow? overflow; // Added overflow property

  // Constructor to allow customization of text, fontSize, and fontWeight
  const CommonTextLabel({
    super.key,
    required this.text,
    this.fontSize = fontSizeTitle4, // Default font size (can be adjusted)
    this.fontWeight = FontWeight.bold, // Default font weight
    this.color,
    this.fontFamily,
    this.textAlign,
    this.maxLines, // Pass maxLines as a parameter
    this.overflow,
  }); // Pass overflow as a parameter

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines, // Apply maxLines
      overflow: overflow, // Apply overflow handling
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily,
      ),
    );
  }
}
