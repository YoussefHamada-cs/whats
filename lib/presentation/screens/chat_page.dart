import 'package:flutter/material.dart';
import 'package:whats/presentation/widgets/custem_appber.dart';
import 'package:whats/presentation/widgets/custom_popup_menu.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  void handleMenuSelection(dynamic value) {
    if (value == 'New group') {
      // Add Archive functionality here
    } else if (value == 'New broadcast') {
      // Add Delete functionality here
    } else if (value == 'Linked devices') {
      // Add Delete functionality here
    } else if (value == 'Starred messages') {
      // Add Delete functionality here
    } else if (value == 'settings') {
      // Navigate to Settings page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_camera_front_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          CustomPopupMenu(onSelected: handleMenuSelection),
        ],
        // onMenuSelected: handleMenuSelection,
        titleappber: 'Chat',
      ),
    );
  }
}
