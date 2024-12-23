import 'package:flutter/material.dart';
import 'package:whats/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0; // مؤشر الصفحة الحالية

  // قائمة الصفحات
  final List<Widget> _pages = [
    const HomePage(),
    const Center(child: Text('Updates')),
    const Center(child: Text('Communities')),
    const Center(child: Text('Calls')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        brightness: Brightness.dark,
        //  primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},
        
        backgroundColor: Colors.green,child: 
        const Icon(Icons.add),),
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
            preferredSize: const Size.fromHeight(1.0), // Height of the divider
            child: Container(
              color: Colors.grey, // Color of the line
              height: 0.5, // Thickness of the line
            ),
          ),
        ),
        body: //HomePage(),
            _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, // تحديد الصفحة الحالية
          onTap: (index) {
            setState(() {
              _currentIndex = index; // تحديث الصفحة عند التبديل
            });
          },
          selectedItemColor: const Color.fromARGB(255, 78, 185, 51),
          unselectedItemColor: Colors.white,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Home',
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
            )
          ],
        ),
      ),
    );
  }
}
