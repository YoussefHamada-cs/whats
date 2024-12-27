import 'package:flutter/material.dart';
import 'package:whats/presentation/screens/auth_pages/log_in.dart';
import 'package:whats/presentation/screens/auth_pages/sign_up.dart';
import 'package:whats/presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          //  primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage(),
          '/signup': (context) => SignUpPage(),
          '/homepage':(context) => const HomePage(),
        });
  }
}
