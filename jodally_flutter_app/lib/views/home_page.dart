import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
