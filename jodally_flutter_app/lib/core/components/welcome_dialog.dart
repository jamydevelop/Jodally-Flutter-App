import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class WelcomeDialog extends StatelessWidget {
  const WelcomeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0,
      ), // remove extra padding
      content: SizedBox(
        width: 334,
        height: 145,
        child: Stack(
          children: [
            // Main content
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  CommonTextLabel(
                    textAlign: TextAlign.center,
                    text: 'Choose Your Role',
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: fontSizeTitle6,
                  ),
                  const SizedBox(height: 4),
                  CommonTextLabel(
                    text: 'Are you signing in as a Passenger or a Driver?',
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                    fontSize: fontSizeTitle4,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonButton(
                        backgroundColor: greenPrimary,
                        borderRadius: 4,
                        width: 143,
                        height: 40,
                        child: CommonTextLabel(
                          text: 'Passenger',
                          fontFamily: 'Poppins',
                          fontSize: fontSizeTitle6,
                          color: whitePrimary,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const SizedBox(width: 10),
                      CommonButton(
                        backgroundColor: whitePrimary,
                        borderColor: greenPrimary,
                        hasBorder: true,
                        borderWidth: 1,
                        borderRadius: 4,
                        width: 143,
                        height: 40,
                        child: CommonTextLabel(
                          text: 'Driver',
                          fontFamily: 'Poppins',
                          fontSize: fontSizeTitle6,
                          color: greenPrimary,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Close button (top-right)
            Positioned(
              top: 4,
              right: 4,
              child: IconButton(
                icon: Image.asset(
                  Assets.welcomeDialogCloseIcn,
                  scale: 3,
                  fit: BoxFit.fill,
                ),
                splashRadius: 20,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
