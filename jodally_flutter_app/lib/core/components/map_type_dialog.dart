import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/core/resources/dimensions.dart';

class MapTypeDialog extends StatelessWidget {
  final MapType selectedMapType;
  final Function(MapType) onMapTypeSelected;

  const MapTypeDialog({
    super.key,
    required this.selectedMapType,
    required this.onMapTypeSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<MapType> mapTypes = [
      MapType.normal,
      MapType.satellite,
      MapType.terrain,
      MapType.hybrid,
    ];

    return Dialog(
      backgroundColor: whitePrimary,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SizedBox(
        width: 334,
        height: 360,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 24,
                bottom: 16,
              ),
              child: Column(
                children: [
                  CommonTextLabel(
                    text: 'Choose Map Type',
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: fontSizeTitleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: ListView.separated(
                      itemCount: mapTypes.length,
                      separatorBuilder: (_, __) =>
                          const Divider(height: 1, color: Colors.grey),
                      itemBuilder: (context, index) {
                        final type = mapTypes[index];
                        final isSelected = type == selectedMapType;

                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: CommonTextLabel(
                            text: type.toString().split('.').last.capitalize(),
                            fontFamily: 'Poppins',
                            fontSize: fontSizeTitleSmall,
                            fontWeight: FontWeight.w500,
                            color: isSelected ? greenPrimary : Colors.black,
                          ),
                          trailing: isSelected
                              ? Icon(Icons.check, color: greenPrimary)
                              : null,
                          onTap: () {
                            onMapTypeSelected(type);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Close Button
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
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return isEmpty ? this : this[0].toUpperCase() + substring(1);
  }
}
