import 'package:flutter/material.dart';
import 'package:whats/presentation/widgets/body_home_page.dart';
import 'package:whats/presentation/widgets/custem_appber.dart';
import 'package:whats/presentation/widgets/custem_bottem_navigation_ber.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const BodyHomePage(),
    const Center(child: Text('Updates')),
    const Center(child: Text('Communities')),
    const Center(child: Text('Calls')),
  ];

  void _handleMenuSelection(dynamic value) {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      appBar: CustomAppBar(
        onMenuSelected: _handleMenuSelection,
        titleappber: 'WhatsApp',
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: CustemBottemNavigationBer(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
