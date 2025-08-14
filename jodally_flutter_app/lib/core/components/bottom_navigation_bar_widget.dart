import 'package:flutter/material.dart';
import 'package:jodally_flutter_app/core/components/common_back_app_bar.dart';
import 'package:jodally_flutter_app/core/components/common_text_label.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimary,
      appBar: CommonBackAppbar(onTap: () {}, textTitle: 'Bottom Nav Bar'),
      body: Center(
        child: CommonTextLabel(
          text: 'Sample Page',
          fontWeight: FontWeight.w600,
          fontSize: 50,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: greenPrimary,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        items: [
          BottomNavigationBarItem(icon: _buildIcon(0), label: 'Home'),
          BottomNavigationBarItem(icon: _buildIcon(1), label: 'Activity'),
          BottomNavigationBarItem(icon: _buildIcon(2), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildIcon(int index) {
    // Choose filled or outline icon based on index
    String assetPath;
    switch (index) {
      case 0:
        assetPath = _selectedIndex == 0
            ? Assets.bnbHomeFilled
            : Assets.bnbHomeOutline;
        break;
      case 1:
        assetPath = _selectedIndex == 1
            ? Assets.bnbActivityFilled
            : Assets.bnbActivityOutline;
        break;
      case 2:
        assetPath = _selectedIndex == 2
            ? Assets.bnbProfileFilled
            : Assets.bnbProfileOutline;
        break;
      default:
        assetPath = Assets.bnbHomeOutline;
    }

    return Image.asset(assetPath, scale: 3);
  }
}
