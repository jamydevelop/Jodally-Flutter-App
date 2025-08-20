import 'dart:ui'; // <-- Import this for ImageFilter.blur
import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/global_select_button.dart';
import 'package:jodally_flutter_app/core/components/global_text_field.dart';
import 'package:jodally_flutter_app/core/components/sign_up_image_modal.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class SignUpPassenger extends StatefulWidget {
  const SignUpPassenger({super.key});

  @override
  State<SignUpPassenger> createState() => _SignUpPassengerState();
}

class _SignUpPassengerState extends State<SignUpPassenger> {
  bool _isBlurred = false;

  void _showGallerySheet() {
    setState(() => _isBlurred = true);
    showModalBottomSheet(
      isScrollControlled: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 65,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          SignUpImageModal(),
        ],
      ),
    ).whenComplete(() {
      setState(() => _isBlurred = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimary,
      appBar: CommonBackAppbar(onTap: () {}),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: SingleChildScrollView(
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
                  // Profile Picture
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 84,
                            height: 84,
                            decoration: BoxDecoration(
                              color: greySecondary,
                              shape: BoxShape.circle,
                              // image: DecorationImage(
                              //   image: AssetImage(Assets.sampleProfileImg),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 28, // adjust size as needed
                              height: 28,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Image.asset(
                                  Assets.profileGalleryIcon,
                                  scale: 2,
                                ),
                                padding: EdgeInsets.zero,
                                onPressed: _showGallerySheet,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  // First Name Field
                  GlobalTextField(
                    title: 'First Name',
                    hintText: 'Enter your first name',
                    iconPath: Assets.smsIcon,
                  ),
                  const SizedBox(height: 8),
                  // Last Name Field
                  GlobalTextField(
                    title: 'Last Name',
                    hintText: 'Enter your last name',
                    iconPath: Assets.smsIcon,
                  ),
                  const SizedBox(height: 8),
                  // Contact Number Field
                  GlobalTextField(
                    title: 'Contact Number',
                    hintText: 'Enter contact number',
                    iconPath: Assets.lockIcon,
                  ),
                  const SizedBox(height: 8),
                  // Province Button
                  GlobalSelectButton(
                    title: 'Province',
                    iconPath: Assets.locationIcon,
                    hintText: 'Select your province',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 8),
                  // City / Municipality Button
                  GlobalSelectButton(
                    title: 'City / Municipality',
                    iconPath: Assets.locationIcon,
                    hintText: 'Select your province',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 8),
                  // Barangay Button
                  GlobalSelectButton(
                    title: 'Barangay',
                    iconPath: Assets.locationIcon,
                    hintText: 'Select barangay',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 8),
                  // House No. / Street Field
                  GlobalTextField(
                    title: 'House No. / Street',
                    hintText: 'Enter your house no. / street',
                    iconPath: Assets.houseIcon,
                  ),

                  const SizedBox(height: 20),
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
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),

          // Blur overlay
          if (_isBlurred)
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: const SizedBox.shrink(),
              ),
            ),
        ],
      ),
    );
  }
}
