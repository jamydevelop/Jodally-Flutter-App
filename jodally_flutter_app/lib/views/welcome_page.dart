import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/welcome_dialog.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whitePrimary,
        body: Center(
          child: Column(
            children: [
              Image.asset(Assets.welcomePageJeepneyImg),
              Text(
                'Jodally',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeDisplayMediumLarge,
                  color: blackPrimary,
                ),
              ),
              Text(
                'Welcome to Jodally, the Jeepney Booking \nApp!',
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: greyPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CommonButton(
                height: 50,
                width: 334,
                borderRadius: 30,
                foregroundColor: whitePrimary,
                backgroundColor: greenPrimary,
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: 'WelcomeDialog',
                    barrierColor: Colors.transparent, // Removes dark overlay
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 4,
                          sigmaY: 4,
                        ), // Apply blur
                        child: Center(
                          child: WelcomeDialog(), // Your custom dialog widget
                        ),
                      );
                    },
                  );
                },
                child: CommonTextLabel(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeTitleSmall,
                  color: whitePrimary,
                  text: "Sign In",
                ),
              ),
              SizedBox(height: 20),
              CommonButton(
                borderColor: greenPrimary,
                borderWidth: 1,
                hasBorder: true,
                height: 50,
                width: 334,
                borderRadius: 30,
                foregroundColor: whitePrimary,
                backgroundColor: whitePrimary,
                onPressed: () {},
                child: CommonTextLabel(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeTitleSmall,
                  color: greenPrimary,
                  text: "Sign Up",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
