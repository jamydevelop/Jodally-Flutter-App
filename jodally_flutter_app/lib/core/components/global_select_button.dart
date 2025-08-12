import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class GlobalSelectButton extends StatefulWidget {
  final String title;
  final String hintText;
  final VoidCallback? function;
  final String iconPath;
  const GlobalSelectButton({
    super.key,
    required this.title,
    this.function,
    required this.iconPath,
    required this.hintText,
  });

  @override
  State<GlobalSelectButton> createState() => _GlobalSelectButtonState();
}

class _GlobalSelectButtonState extends State<GlobalSelectButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Title
        CommonTextLabel(
          text: widget.title,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
          fontSize: fontSizeTitleSmall,
          color: blackTertiary,
        ),
        const SizedBox(height: 4),
        // Button
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: widget.function,
            style: TextButton.styleFrom(
              backgroundColor: lightGreyPrimary,
              foregroundColor: lightGreySecondary,
              padding: EdgeInsets.symmetric(
                vertical: 16,
              ), // Vertical padding only
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              alignment: Alignment.centerLeft, // Aligns Row to the left
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ), // Left-right padding
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(widget.iconPath, scale: 3),
                  SizedBox(width: 12), // Spacing between icon and text
                  CommonTextLabel(
                    text: widget.hintText,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                    fontSize: fontSizeTitleSmall,
                    color: lightGreySecondary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
