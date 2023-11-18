import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://scontent-mad2-1.xx.fbcdn.net/v/t1.6435-9/197868907_4277868055609315_4215524690463680894_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=be3454&_nc_ohc=70OF0tKIEzQAX8VoMze&_nc_ht=scontent-mad2-1.xx&oh=00_AfD1vHVLPywUeJeTkQXbtQvHDaTBR21zP-DUEznu3Ynayw&oe=6580C0D8',
            ),
          ),
        ),
        title: const Text('Mi  amor ❤'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
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
                  return Text('Indice: $index');
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
