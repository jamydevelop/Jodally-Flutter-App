import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/dashed_border_painter.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class DashedOutlineButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const DashedOutlineButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 81,
      width: double.infinity, // Take full width
      child: CustomPaint(
        painter: DashedBorderPainter(color: lightGreySecondary),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: lightGreyPrimary,
            side: BorderSide.none, // Hide the default solid border
            padding: EdgeInsets.zero, // Remove padding to better control height
            shape: RoundedRectangleBorder(), // Optional: customize shape
          ),
          child: Center(
            child: Text(label, style: TextStyle(color: lightGreySecondary)),
          ),
        ),
      ),
    );
  }
}
