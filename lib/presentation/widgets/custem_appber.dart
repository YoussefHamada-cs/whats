import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final Function(dynamic) onMenuSelected;
  final String titleappber;
  final List<Widget>? actions;
  const CustomAppBar(
      {super.key,/* required this.onMenuSelected*/required this.titleappber, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleappber),
      actions:actions,
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
