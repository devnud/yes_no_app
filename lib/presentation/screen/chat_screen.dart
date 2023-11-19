import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/chat_app_bar.dart';
import 'package:yes_no_app/presentation/widgets/chat/chat_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(),
      body: const ChatView(),
    );
  }
}
