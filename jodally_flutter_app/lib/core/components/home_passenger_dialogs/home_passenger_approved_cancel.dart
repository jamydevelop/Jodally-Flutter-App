import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/global_cancel_button.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class HomePassengerApprovedCancel extends StatelessWidget {
  const HomePassengerApprovedCancel({super.key});

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
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Assets.waitingImgIcon, scale: 4),
                  CommonTextLabel(
                    text: 'Driver is on the way',
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: fontSizeTitleSmall,
                    color: blackPrimary,
                  ),
                  GlobalCancelButton(onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
