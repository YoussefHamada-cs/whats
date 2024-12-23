import 'package:flutter/material.dart';
import 'package:whats/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        //  primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsaApp'),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton(onSelected: (value) {
              // Handle your action based on the selected value
            }, itemBuilder: (BuildContext context) {
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
        // ignore: prefer_const_constructors
        body: HomePage(),
      ),
    );
  }
}
