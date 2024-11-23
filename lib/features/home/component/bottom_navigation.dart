import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  void Function(int)? updateSelectedIndex;

  BottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.updateSelectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        NavigationItem(
            onTap: () => updateSelectedIndex!(0),
            icon: Icons.home_outlined,
            label: "Home",
            isActive: selectedIndex == 0),
        NavigationItem(
            onTap: () => updateSelectedIndex!(1),
            icon: Icons.shopping_cart_outlined,
            label: "Cart",
            isActive: selectedIndex == 1),
        NavigationItem(
            onTap: () => updateSelectedIndex!(2),
            icon: Icons.chat_bubble_outline_outlined,
            label: "Chat",
            isActive: selectedIndex == 2),
        NavigationItem(
            onTap: () => updateSelectedIndex!(3),
            icon: Icons.person_outlined,
            label: "Account",
            isActive: selectedIndex == 3),
      ]),
    );
  }
}

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  void Function()? onTap;

  NavigationItem({
    super.key,
    this.onTap,
    required this.icon,
    required this.label,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isActive
                  ? Theme.of(context).colorScheme.primary
                  : Colors.black,
            ),
            TextBodyMedium(
              text: label,
              preferredStyle: TextStyle(
                color: isActive
                    ? Theme.of(context).colorScheme.primary
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
