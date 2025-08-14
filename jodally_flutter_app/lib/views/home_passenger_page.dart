import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';

class HomePassengerPage extends StatefulWidget {
  const HomePassengerPage({super.key});

  @override
  State<HomePassengerPage> createState() => _HomePassengerPageState();
}

class _HomePassengerPageState extends State<HomePassengerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CommonTextLabel(
        text: 'Home Page',
        fontSize: 50,
        fontWeight: FontWeight.w200,
      ),
    );
  }
}
