// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class GoogleMapButtons extends StatelessWidget {
  final String asset;
  final VoidCallback onPressed;
  const GoogleMapButtons({
    super.key,
    required this.asset,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(asset, scale: 4, color: greenPrimary),
        padding: EdgeInsets.zero,
        iconSize: 20,
      ),
    );
  }
}
