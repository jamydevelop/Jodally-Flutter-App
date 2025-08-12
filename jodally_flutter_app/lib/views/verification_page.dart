import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/app_constants.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.varificationImg, scale: 4),
              CommonTextLabel(
                text: 'Verify Your Email',
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: fontSizeTitleLarge,
                color: blackPrimary,
              ),
              SizedBox(height: 8),
              SizedBox(
                //width: 313,
                child: CommonTextLabel(
                  text: AppConstants.VERIFICATION_DESC,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitleSmall,
                  color: greyPrimary,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 48),
              CommonButton(
                backgroundColor: greenPrimary,
                borderRadius: 6,
                width: double.infinity,
                height: 50,
                child: CommonTextLabel(
                  text: 'Close',
                  fontFamily: 'Poppins',
                  fontSize: fontSizeTitleLarge,
                  color: whitePrimary,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
