import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/bullet_list.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/app_constants.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignUpDriverLicense extends StatefulWidget {
  const SignUpDriverLicense({super.key});

  @override
  State<SignUpDriverLicense> createState() => _SignUpDriverLicenseState();
}

class _SignUpDriverLicenseState extends State<SignUpDriverLicense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimary,
      appBar: CommonBackAppbar(onTap: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTextLabel(
                text: 'Driver’s License',
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
              BulletList(
                strings: [
                  AppConstants.FIRST_BULLET,
                  AppConstants.SECOND_BULLET,
                  AppConstants.THIRD_BULLET,
                ],
              ),
              SizedBox(height: 12),
              CommonTextLabel(
                text: 'Attach Driver’s License',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
              ),
              SizedBox(height: 12),
              CommonTextLabel(
                text: 'Attach OR/CR',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
              ),
              const SizedBox(height: 24),
              CommonButton(
                backgroundColor: greenPrimary,
                borderRadius: 6,
                width: double.infinity,
                height: 50,
                child: CommonTextLabel(
                  text: 'Continue',
                  fontFamily: 'Poppins',
                  fontSize: fontSizeTitleLarge,
                  color: whitePrimary,
                ),
                //onPressed: () => Navigator.of(context).pop(),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
