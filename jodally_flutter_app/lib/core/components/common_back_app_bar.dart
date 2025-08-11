import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class CommonBackAppbar extends AppBar {
  final VoidCallback onTap;
  final String? textTitle;
  CommonBackAppbar({super.key, required this.onTap, this.textTitle})
    : super(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: blackSecondary),
          onPressed: onTap,
        ),
        title: CommonTextLabel(
          text: textTitle ?? "",
          fontWeight: FontWeight.w500,
          fontSize: fontSizeHeadline,
          color: blackPrimary,
        ),
        backgroundColor: whitePrimary,
        automaticallyImplyLeading: true,
        scrolledUnderElevation: 0.0,
      );
}
