import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

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
        child: SingleChildScrollView(child: Column(children: [])),
      ),
    );
  }
}
