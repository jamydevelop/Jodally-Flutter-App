import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/components/global_cancel_button.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class HomePassengerApprovedCancelDialog extends StatelessWidget {
  const HomePassengerApprovedCancelDialog({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //First Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonTextLabel(
                        text: 'Driver is on the way',
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: fontSizeTitleSmall,
                        color: blackPrimary,
                      ),
                      Image.asset(Assets.infoCircleIcon),
                    ],
                  ),
                  SizedBox(height: 10),
                  //Second Row
                  Row(
                    children: [
                      // I M A G E - C O N T A I N E R
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: greySecondary,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            Assets.driverImg,
                            fit: BoxFit.cover,
                            height: 46,
                            width: 46,
                          ),
                        ),
                      ),

                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonTextLabel(
                            text: 'Kevin  Nuqui',
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: fontSizeTitleSmall,
                            color: blackPrimary,
                          ),
                          Row(
                            children: [
                              Image.asset(Assets.clockIcon, scale: 3),
                              SizedBox(width: 4),
                              CommonTextLabel(
                                text: '2 minutes away',
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                fontSize: fontSizeCaptionMedium,
                                color: greyPrimary,
                              ),
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(width: double.infinity),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.starIcon),
                              CommonTextLabel(
                                text: '4.6',
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                                fontSize: fontSizeCaptionMedium,
                                color: greenSecondary,
                              ),
                            ],
                          ),
                          CommonTextLabel(
                            text: '500 meters',
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            fontSize: fontSizeCaptionMedium,
                            color: greyPrimary,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
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
