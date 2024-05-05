import 'package:flutter/material.dart';

class BottomNavigationBarContent extends StatelessWidget {
  const BottomNavigationBarContent(
      {super.key, required this.onSelect, required this.index});
  final void Function(int index) onSelect;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        selectedItemColor: Colors.black, // Color for selected icon
        unselectedItemColor: Colors.black, // Color for unselected icon
        selectedIconTheme: const IconThemeData(
          shadows: [Shadow(color: Colors.green)],
          color: Colors.green, // Color for selected icon
          size: 24,
        ),
        onTap: onSelect,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
            ),label: 'Chats'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.update,
              ),
              label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.groups_outlined,
              ),
              label: 'Communities'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call_outlined,
              ),
              label: 'Calls'),
        ]);
  }
}
