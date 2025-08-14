import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/custom_bottom_navigation_bar.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
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
