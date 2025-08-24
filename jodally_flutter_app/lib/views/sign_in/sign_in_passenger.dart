import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_field.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignInPagePassenger extends StatefulWidget {
  const SignInPagePassenger({super.key});

  @override
  State<SignInPagePassenger> createState() => _SignInPagePassengerState();
}

class _SignInPagePassengerState extends State<SignInPagePassenger> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whitePrimary,
        appBar: CommonBackAppbar(onTap: () {}),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextLabel(
                  text: 'Sign In',
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeDisplayMediumLarge,
                ),
                SizedBox(height: 12),
                CommonTextLabel(
                  text:
                      'Welcome, Sign in to Jodally for easy bookings and a smooth journey. Let’s go!',
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitleSmall,
                ),
                SizedBox(height: 12),
                // Email Text Label
                CommonTextLabel(
                  text: 'Email',
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitleSmall,
                  color: blackTertiary,
                ),
                SizedBox(height: 4),
                // Email Text Field
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

                  onFieldSubmitted: (value) {
                    // Hide the on-screen keyboard
                    FocusScope.of(context).unfocus();
                  },
                  keyboardType: TextInputType.emailAddress,
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: BorderSide(color: lightGreyPrimary, width: 1),
                  ),
                ),
                SizedBox(height: 12),
                // Password Text Label
                CommonTextLabel(
                  text: 'Password',
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeTitleSmall,
                  color: blackTertiary,
                ),
                SizedBox(height: 4),
                // Password Text Field
                CommonTextField(
                  isSecure: true,
                  hasShowHideTextIcon: true,
                  maxLines: 1,
                  filled: true,
                  fillColor: lightGreyPrimary,
                  hintText: "Enter your password",
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

                  onFieldSubmitted: (value) {
                    // Hide the on-screen keyboard
                    FocusScope.of(context).unfocus();
                  },
                  keyboardType: TextInputType.text,
                  inputBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: BorderSide(color: lightGreyPrimary, width: 1),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          // Change the color to red when tapped
                          //textColor = greyPrimary;
                          //context.go("/forgotpassword");
                        });
                      },
                      child: CommonTextLabel(
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w600,
                        fontSize: fontSizeTitleSmall, //12px
                        color:
                            greenSecondary, // Use the dynamic color based on the state
                        text: "Forgot Password?",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                CommonButton(
                  backgroundColor: greenPrimary,
                  borderRadius: 6,
                  width: double.infinity,
                  height: 50,
                  child: CommonTextLabel(
                    text: 'Sign In',
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
      ),
    );
  }
}
