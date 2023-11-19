import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_sessage_buuble.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MyMessageBuble();
                },
              ),
            ),
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }
}