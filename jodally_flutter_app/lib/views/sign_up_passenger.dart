import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_field.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/app_constants.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignUpPassenger extends StatefulWidget {
  const SignUpPassenger({super.key});

  @override
  State<SignUpPassenger> createState() => _SignUpPassengerState();
}

class _SignUpPassengerState extends State<SignUpPassenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimary,
      appBar: CommonBackAppbar(onTap: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CommonTextLabel(
              text: 'Fill Up Your Information',
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
            const SizedBox(height: 12),
            CommonTextLabel(
              text: 'Tell us about yourself',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
            ),
            const SizedBox(height: 12),

            // First Name Label
            CommonTextLabel(
              text: 'First Name',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            // First Name Field
            CommonTextField(
              filled: true,
              fillColor: lightGreyPrimary,
              hintText: 'Enter your first name',
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

            // Last Name Label
            CommonTextLabel(
              text: 'Last Name',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            // Last Name Field
            CommonTextField(
              isSecure: true,
              hasShowHideTextIcon: true,
              maxLines: 1,
              filled: true,
              fillColor: lightGreyPrimary,
              hintText: 'Enter your last name',
              hintTextStyle: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
                color: lightGreySecondary,
              ),
              prefixIcon: Image.asset(
                Assets.lockIcon,
                scale: 3,
                color: lightGreySecondary,
              ),
              onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              keyboardType: TextInputType.text,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(color: lightGreyPrimary, width: 1),
              ),
            ),
            const SizedBox(height: 12),

            // Contact Number Label
            CommonTextLabel(
              text: 'Contact Number',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            // Contact Number Field
            CommonTextField(
              isSecure: true,
              hasShowHideTextIcon: true,
              maxLines: 1,
              filled: true,
              fillColor: lightGreyPrimary,
              hintText: 'Enter your contact number',
              hintTextStyle: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
                color: lightGreySecondary,
              ),
              prefixIcon: Image.asset(
                Assets.lockIcon,
                scale: 3,
                color: lightGreySecondary,
              ),
              onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              keyboardType: TextInputType.text,
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide(color: lightGreyPrimary, width: 1),
              ),
            ),
            const SizedBox(height: 12),
            // House No. / Street Label
            CommonTextLabel(
              text: 'House No. / Street',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            // First Name Field
            CommonTextField(
              filled: true,
              fillColor: lightGreyPrimary,
              hintText: 'Enter your house no. / street',
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
            // Province Label
            CommonTextLabel(
              text: 'Province',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            // Province Button
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
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
                      Image.asset(Assets.locationIcon, scale: 3),
                      SizedBox(width: 12), // Spacing between icon and text
                      Text('Select province'),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
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
    );
  }
}
