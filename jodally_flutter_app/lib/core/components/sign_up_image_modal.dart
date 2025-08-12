import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignUpImageModal extends StatefulWidget {
  const SignUpImageModal({super.key});

  @override
  State<SignUpImageModal> createState() => _SignUpImageModalState();
}

class _SignUpImageModalState extends State<SignUpImageModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonTextLabel(
            text: 'Upload an image',
            color: blackPrimary,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: fontSizeTitleSmall,
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(Assets.cameraIcon, scale: 3),
                    SizedBox(width: 8),
                    CommonTextLabel(
                      text: 'Take a selfie',
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: fontSizeTitleLarge,
                      color: blackTertiary,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(Assets.galleryIcon, scale: 3),
                    SizedBox(width: 8),
                    CommonTextLabel(
                      text: 'Upload from gallery',
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: fontSizeTitleLarge,
                      color: blackTertiary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
