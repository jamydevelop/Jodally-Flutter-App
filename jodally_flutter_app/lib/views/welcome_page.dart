import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

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
        body: Center(
          child: Column(
            children: [
              Image.asset(Assets.welcomePageJeepneyImg),
              Text(
                'Jodally',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: blackPrimary,
                ),
              ),
              // Text('data'),
              // Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
