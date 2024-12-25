import 'package:flutter/material.dart';
import 'package:whats/presentation/widgets/body_home_page.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('WhatsaApp'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: () {},
                    child: const Text('New group'),
                  ),
                  PopupMenuItem(
                    value: () {},
                    child: const Text('New broadcast'),
                  ),
                  PopupMenuItem(
                    value: () {},
                    child: const Text('Linked devives'),
                  ),
                  PopupMenuItem(
                    value: () {},
                    child: const Text('Starred messages'),
                  ),
                  PopupMenuItem(
                    value: () {},
                    child: const Text('Settings'),
                  )
                ];
              })
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 0.5,
          ),
        ),
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
