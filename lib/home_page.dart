import 'package:flutter/material.dart';
import 'package:healthapp/widgets/Nearby_Doctors.dart';
import 'package:healthapp/widgets/health_needs.dart';
import 'package:healthapp/widgets/upcoming_card..dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body:ListView(
        padding: const EdgeInsets.all(14),
        children: [

          //Upcoming Card
          const UpcomingCard(),
         const SizedBox(height: 20),
          Text(
              "Health Needs",
          style:Theme.of(context).textTheme.headline6
          ),
          const SizedBox(height: 15,),
          //Health Needs
          const  HealthNeeds(),
          const SizedBox(height: 30,),

          Text(
              "Nearby Doctors",
              style:Theme.of(context).textTheme.headline6
          ),
          const SizedBox(height: 15,),
          const NearbyDoctors()
          //Nearby Doctors
        ],
      ) ,

    );
  }
}
