import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/custom_bottom_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CommonTextLabel(
          text: 'Home Page',
          fontSize: 50,
          fontWeight: FontWeight.w200,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
