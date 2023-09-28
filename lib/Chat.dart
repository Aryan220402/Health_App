import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Aryan"),
            Text("How are you feeling today?",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(onPressed: () {}, icon:  const Icon(Icons.search_outlined),
          ),
        ],
      ),
    );
  }
}
