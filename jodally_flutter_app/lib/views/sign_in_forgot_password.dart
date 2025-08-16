import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/global_text_field.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignInForgotPassword extends StatefulWidget {
  const SignInForgotPassword({super.key});

  @override
  State<SignInForgotPassword> createState() => _SignInForgotPasswordState();
}

class _SignInForgotPasswordState extends State<SignInForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimary,
      appBar: CommonBackAppbar(onTap: () {}),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonTextLabel(
              text: 'Forgot Password',
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: fontSizeDisplayMediumLarge,
            ),
            SizedBox(height: 14),
            CommonTextLabel(
              text:
                  'Enter your email address below, and we’ll send you a link to reset your password.',
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              fontSize: fontSizeTitleSmall,
            ),
            SizedBox(height: 28),
            GlobalTextField(
              title: 'Email',
              hintText: 'Enter your email',
              iconPath: Assets.smsIcon,
            ),
            SizedBox(height: 54),
            CommonButton(
              backgroundColor: greenPrimary,
              borderRadius: 6,
              width: double.infinity,
              height: 50,
              child: CommonTextLabel(
                text: 'Send',
                fontFamily: 'Poppins',
                fontSize: fontSizeTitleLarge,
                color: whitePrimary,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
