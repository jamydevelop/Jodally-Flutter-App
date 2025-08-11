import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_field.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/app_constants.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignUpPassengerAndDriver extends StatefulWidget {
  const SignUpPassengerAndDriver({super.key});

  @override
  State<SignUpPassengerAndDriver> createState() =>
      _SignUpPassengerAndDriverState();
}

class _SignUpPassengerAndDriverState extends State<SignUpPassengerAndDriver> {
  bool isChecked = false;

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
              text: AppConstants.SIGN_UP_TITLE,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
            const SizedBox(height: 12),
            CommonTextLabel(
              text: AppConstants.SIGN_UP_DESC,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
            ),
            const SizedBox(height: 12),

            // Email Label & Field
            CommonTextLabel(
              text: 'Email',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            CommonTextField(
              filled: true,
              fillColor: lightGreyPrimary,
              hintText: "Enter your email",
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

            // Password Label & Field
            CommonTextLabel(
              text: AppConstants.PASSWORD_TITLE,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            CommonTextField(
              isSecure: true,
              hasShowHideTextIcon: true,
              maxLines: 1,
              filled: true,
              fillColor: lightGreyPrimary,
              hintText: AppConstants.PASSWORD_SUB_TITLE,
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

            // Confirm Password Label & Field
            CommonTextLabel(
              text: 'Confirm Password',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
              color: blackTertiary,
            ),
            const SizedBox(height: 4),
            CommonTextField(
              isSecure: true,
              hasShowHideTextIcon: true,
              maxLines: 1,
              filled: true,
              fillColor: lightGreyPrimary,
              hintText: "Enter your confirm password",
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
            const SizedBox(height: 20),
            termsAndPolicy(),
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

  /// Widget showing the checkbox and clickable policy text
  Widget termsAndPolicy() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // align to top
      children: [
        Checkbox(
          activeColor: greenPrimary,
          value: isChecked,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: TextStyle(color: greyPrimary, fontSize: 16),
              children: [
                const TextSpan(
                  text: 'Creating an account means you accept our ',
                ),
                TextSpan(
                  text: 'Terms and Conditions',
                  style: const TextStyle(
                    fontFamily: 'Nunito',
                    color: greenPrimary,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = _onTermsTapped,
                ),
                const TextSpan(text: ' and acknowledge our '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: const TextStyle(
                    fontFamily: 'Nunito',
                    color: greenPrimary,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = _onPrivacyTapped,
                ),
                const TextSpan(text: '.'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _onTermsTapped() {
    debugPrint('Terms and Conditions tapped');
  }

  void _onPrivacyTapped() {
    debugPrint('Privacy Policy tapped');
  }
}
