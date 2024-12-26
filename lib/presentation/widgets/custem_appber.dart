import 'package:flutter/material.dart';
import 'package:whats/presentation/widgets/custom_popup_menu.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(dynamic) onMenuSelected;
  final String titleappber;
  const CustomAppBar({super.key, required this.onMenuSelected, required this.titleappber});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Text(titleappber),
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        CustomPopupMenu(onSelected: onMenuSelected),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey,
          height: 0.5,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1.0);
}
