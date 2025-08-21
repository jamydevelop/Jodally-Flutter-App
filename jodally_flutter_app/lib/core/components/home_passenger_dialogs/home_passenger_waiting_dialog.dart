import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class HomePassengerWaitingDialog extends StatefulWidget {
  const HomePassengerWaitingDialog({super.key});

  @override
  State<HomePassengerWaitingDialog> createState() =>
      _HomePassengerWaitingDialogState();
}

class _HomePassengerWaitingDialogState
    extends State<HomePassengerWaitingDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: whitePrimary,
      insetPadding: EdgeInsets.symmetric(horizontal: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 342,
        height: 182,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
