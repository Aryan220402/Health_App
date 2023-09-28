import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
