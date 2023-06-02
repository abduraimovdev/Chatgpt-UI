import 'package:flutter/material.dart';
import 'package:scaffol_home_task/intro_page.dart';
import 'package:scaffol_home_task/chat_page.dart';

void main(List<String> args) {
  runApp(const RunApp());
}

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      routes: {
        IntroPage.id: (context) => const IntroPage(),
        ChatPage.id: (context) => const ChatPage(),
      },
    );
  }
}
