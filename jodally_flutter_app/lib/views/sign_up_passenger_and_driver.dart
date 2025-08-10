import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class SignUpPassengerAndDriver extends StatefulWidget {
  const SignUpPassengerAndDriver({super.key});

  @override
  State<SignUpPassengerAndDriver> createState() =>
      _SignUpPassengerAndDriverState();
}

class _SignUpPassengerAndDriverState extends State<SignUpPassengerAndDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimary,
      appBar: CommonBackAppbar(onTap: () {}),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(children: <Widget>[]),
      ),
    );
  }
}
