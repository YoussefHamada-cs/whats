import 'package:flutter/material.dart';

class CustomPopupMenu extends StatelessWidget {
  final Function(dynamic) onSelected;

  const CustomPopupMenu({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(
            value: 'New group',
            child: Text('New group'),
          ),
          const PopupMenuItem(
            value: 'New broadcast',
            child: Text('New broadcast'),
          ),
          const PopupMenuItem(
            value: 'Linked devices',
            child: Text('Linked devices'),
          ),
          const PopupMenuItem(
            value: 'Starred messages',
            child: Text('Starred messages'),
          ),
          const PopupMenuItem(
            value: 'Settings',
            child: Text('Settings'),
          ),
        ];
      },
    );
  }
}
