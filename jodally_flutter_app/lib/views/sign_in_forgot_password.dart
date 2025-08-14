import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

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
        child: Column(children: []),
      ),
    );
  }
}
