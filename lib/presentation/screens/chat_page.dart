import 'package:flutter/material.dart';
import 'package:whats/presentation/widgets/custem_appber.dart';

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
          onMenuSelected: handleMenuSelection, titleappber: 'Chat'),
    );
  }
}
