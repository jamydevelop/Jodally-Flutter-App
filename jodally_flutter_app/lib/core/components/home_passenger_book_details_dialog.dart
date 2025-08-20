import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class HomePassengerBookDetailsDialog extends StatelessWidget {
  const HomePassengerBookDetailsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greySecondary,
      body: Dialog(
        backgroundColor: whitePrimary,
        insetPadding: EdgeInsets.symmetric(horizontal: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
          width: 342,
          height: 182,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('data'),
                    Text('data'),
                    Text('data'),
                    Text('data'),
                  ],
                ),
              ),

              Positioned(
                top: -4,
                right: -3,
                child: IconButton(
                  icon: Image.asset(
                    Assets.welcomeDialogCloseIcn,
                    scale: 3,
                    fit: BoxFit.fill,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  splashRadius: 20,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
