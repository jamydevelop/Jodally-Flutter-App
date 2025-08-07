import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenSecondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/jeepney_splash_img.png',
              height: 150,
              width: 150,
            ),
            Text(
              'Jodally',
              style: TextStyle(
                fontFamily: "Poppins",
                color: whitePrimary,
                fontSize: 16,
              ),
            ),
            Text(
              '“Jeepney Rides, Made Easy!”',
              style: TextStyle(
                fontFamily: "Nunito",
                color: whitePrimary,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
