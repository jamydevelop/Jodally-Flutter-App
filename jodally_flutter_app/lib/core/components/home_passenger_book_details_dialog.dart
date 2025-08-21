import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_button.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class HomePassengerBookDetailsDialog extends StatelessWidget {
  final VoidCallback? onClose;

  const HomePassengerBookDetailsDialog({super.key, this.onClose});

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
                children: [
                  Row(
                    children: [
                      //JEEPNEY & DRIVER PICTURE
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(Assets.jeepneyImg),
                          Positioned(
                            bottom: -10,
                            right: -10,
                            child: Image.asset(Assets.driverImg),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonTextLabel(
                            text: 'Kevin Nuqui',
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: fontSizeTitleSmall,
                          ),
                          Row(
                            children: [
                              Image.asset(Assets.starIcon),
                              SizedBox(width: 8),
                              CommonTextLabel(
                                text: '4.6',
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                                fontSize: fontSizeCaptionMedium,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(Assets.clockIcon, scale: 3),
                              SizedBox(width: 8),
                              CommonTextLabel(
                                text: '2 minutes away ',
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                                fontSize: fontSizeCaptionMedium,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(Assets.waitingIcon, scale: 3),
                              SizedBox(width: 8),
                              CommonTextLabel(
                                text: '2 seats available ~ Going to San Jose',
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                                fontSize: fontSizeCaptionMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      height: 50,
                      backgroundColor: greenPrimary,
                      child: CommonTextLabel(
                        text: 'Book Now',
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: fontSizeCallout,
                      ),
                      onPressed: () {},
                    ),
                  ),
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
                onPressed: () {
                  if (onClose != null) {
                    onClose!();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
