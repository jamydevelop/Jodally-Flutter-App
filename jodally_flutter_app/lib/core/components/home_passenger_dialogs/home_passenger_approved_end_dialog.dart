import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class HomePassengerApprovedEndDialog extends StatelessWidget {
  const HomePassengerApprovedEndDialog({super.key});

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
                      // D R I V E R - S T A T U S - T E X T
                      CommonTextLabel(
                        text: "Let's Go",
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
                  CommonButton(
                    borderColor: redPrimary,
                    borderWidth: 1,
                    hasBorder: true,
                    height: 50,
                    width: 334,
                    borderRadius: 8,
                    foregroundColor: whitePrimary,
                    backgroundColor: redPrimary,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: CommonTextLabel(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: fontSizeTitleSmall,
                      color: whitePrimary,
                      text: 'End Trip',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
