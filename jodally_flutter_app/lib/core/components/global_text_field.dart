import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_field.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class GlobalTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final String iconPath;
  final TextEditingController? controller;
  const GlobalTextField({
    super.key,
    required this.hintText,
    required this.iconPath,
    this.controller,
    required this.title,
  });

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonTextLabel(
          text: widget.title,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
          fontSize: fontSizeTitleSmall,
          color: blackTertiary,
        ),
        const SizedBox(height: 4),
        CommonTextField(
          controller: widget.controller,
          filled: true,
          fillColor: lightGreyPrimary,
          hintText: widget.hintText,
          hintTextStyle: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w400,
            fontSize: fontSizeSubhead,
            color: lightGreySecondary,
          ),
          prefixIcon: Image.asset(
            widget.iconPath,
            scale: 3,
            color: lightGreySecondary,
          ),
          onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
          keyboardType: TextInputType.emailAddress,
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(color: lightGreyPrimary, width: 1),
          ),
        ),
      ],
    );
  }
}
