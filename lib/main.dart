import 'package:flutter/material.dart';
import 'package:messenger_clone/chat_home/chat_home.dart';
import 'package:messenger_clone/chats/chats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ChatHome(),
    );
  }
}


