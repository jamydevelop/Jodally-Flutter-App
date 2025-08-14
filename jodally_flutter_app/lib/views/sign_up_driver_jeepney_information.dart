import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_field.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/dashed_outline_button.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignUpDriverJeepneyInformation extends StatefulWidget {
  const SignUpDriverJeepneyInformation({super.key});

  @override
  State<SignUpDriverJeepneyInformation> createState() =>
      _SignUpDriverJeepneyInformationState();
}

class _SignUpDriverJeepneyInformationState
    extends State<SignUpDriverJeepneyInformation> {
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
                text: 'Jeepney Information',
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: fontSizeDisplayMediumLarge,
              ),
              const SizedBox(height: 12),
              CommonTextLabel(
                text:
                    'Share a clear photo of your jeepney to complete your registration and get started with Jodally!',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
              ),
              const SizedBox(height: 28),
              //Owner Name Label
              CommonTextLabel(
                text: 'Owner Name',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
                color: blackTertiary,
              ),
              const SizedBox(height: 4),
              // Owner Name Field
              CommonTextField(
                filled: true,
                fillColor: lightGreyPrimary,
                hintText: 'Enter owner name',
                hintTextStyle: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeSubhead,
                  color: lightGreySecondary,
                ),
                prefixIcon: Image.asset(
                  Assets.smsIcon,
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
              const SizedBox(height: 12),
              //Plate Number Label
              CommonTextLabel(
                text: 'Plate Number',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
                color: blackTertiary,
              ),
              const SizedBox(height: 4),
              // Owner Name Field
              CommonTextField(
                filled: true,
                fillColor: lightGreyPrimary,
                hintText: 'Enter your plate number',
                hintTextStyle: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeSubhead,
                  color: lightGreySecondary,
                ),
                prefixIcon: Image.asset(
                  Assets.smsIcon,
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
              const SizedBox(height: 12),
              //Attach Jeepney Label
              CommonTextLabel(
                text: 'Attach Jeepney',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
                color: blackTertiary,
              ),
              SizedBox(height: 12),
              DashedOutlineButton(
                label: 'Upload',
                onPressed: () {
                  // Handle button press
                },
              ),
              const SizedBox(height: 30),
              //Continue Button
              CommonButton(
                backgroundColor: greenPrimary,
                borderRadius: 6,
                width: double.infinity,
                height: 50,
                child: CommonTextLabel(
                  text: 'Sign Up',
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
