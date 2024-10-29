import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: _buildIconWithCircle(Icons.home, 0),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _buildIconWithCircle(Icons.favorite, 1),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: _buildIconWithCircle(Icons.menu_book_rounded, 2),
          label: 'Library',
        ),
        BottomNavigationBarItem(
          icon: _buildIconWithCircle(Icons.chat_outlined, 3),
          label: 'Messages',
        ),
      ],
    );
  }

  Widget _buildIconWithCircle(IconData icon, int index) {
    bool isSelected = _currentIndex == index;
    return Stack(
      alignment: Alignment.center,
      children: [
        if (isSelected)
          Container(
            //! TODO:   Make the container more responsive

            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: AppColors.bottomnavigation,
              shape: BoxShape.circle,
            ),
          ),
        Icon(
          icon,
          color: isSelected ? AppColors.white1 : AppColors.grey,
        ),
      ],
    );
  }
}
