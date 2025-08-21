import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';
import 'package:jodally_flutter_app/views/pages/activity_page.dart';
import 'package:jodally_flutter_app/views/pages/home_passenger_page.dart';
import 'package:jodally_flutter_app/views/pages/profile_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePassengerPage(),
    ActivityPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            _pages[_selectedIndex],
            // We could overlay dialog-specific UI here if needed globally
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          selectedItemColor: greenPrimary,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            fontSize: 12,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            fontSize: 12,
          ),
          items: [
            BottomNavigationBarItem(icon: _buildIcon(0), label: 'Home'),
            BottomNavigationBarItem(icon: _buildIcon(1), label: 'Activity'),
            BottomNavigationBarItem(icon: _buildIcon(2), label: 'Profile'),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
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
