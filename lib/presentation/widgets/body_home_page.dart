import 'package:flutter/material.dart';
import 'package:whats/presentation/screens/chat_page.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ChatPage();
              },
            ));
          },
          child: ListTile(
            leading: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children: [
                              // الصورة
                              SizedBox(
                                height: 280,
                                width:
                                    300, // ضبط حجم الصورة بما يناسب الـ Dialog
                                child: Image.asset(
                                  'assets/images/IMG-20230301-WA0027.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // النص فوق الصورة
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 280, // يغطي عرض الصورة
                                  color: Colors.black
                                      .withOpacity(0.3), // خلفية داكنة شفافة
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 10,
                                  ),
                                  child: const Text(
                                    'Youssef Hamada',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.message_outlined,
                                    color: Colors.green),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.local_phone_outlined,
                                    color: Colors.green),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.video_call_outlined,
                                    color: Colors.green),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.info_outline_rounded,
                                    color: Colors.green),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/IMG-20230301-WA0027.jpg',
                ),
                radius: 27,
              ),
            ),
            title: const Text('Youssef Hamada'),
            subtitle: const Text('Data'),
            trailing: const Text('Yesterday'),
          ),
        );
      },
    );
  }
}
