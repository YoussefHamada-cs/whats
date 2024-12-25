import 'package:flutter/material.dart';

class CustemBottemNavigationBer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustemBottemNavigationBer({
 super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: const Color.fromARGB(255, 78, 185, 51),
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.update),
          label: 'Updates',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          label: 'Communities',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',
        ),
      ],
    );
  }
}
