import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            radius: 27,
          ),
          title: Text('youssef hamada'),
          subtitle: Text('data'),
          trailing: Text('yesterday'),
        );
      },
    );
  }
}
