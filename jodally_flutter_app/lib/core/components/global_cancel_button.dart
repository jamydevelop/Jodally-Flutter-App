import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class GlobalCancelButton extends StatelessWidget {
  final VoidCallback onPressed;
  const GlobalCancelButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      borderColor: redPrimary,
      borderWidth: 1,
      hasBorder: true,
      height: 50,
      width: 334,
      borderRadius: 8,
      foregroundColor: whitePrimary,
      backgroundColor: whitePrimary,
      onPressed: onPressed,
      child: CommonTextLabel(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        fontSize: fontSizeTitleSmall,
        color: redPrimary,
        text: 'Cancel Request',
      ),
    );
  }
}
