import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
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
            children: [
              CommonTextLabel(
                text: 'Jeepney Information',
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
              const SizedBox(height: 12),
              CommonTextLabel(
                text:
                    'Share a clear photo of your jeepney to complete your registration and get started with Jodally!',
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: fontSizeTitleSmall,
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
