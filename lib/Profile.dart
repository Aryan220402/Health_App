import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:healthapp/models/profile_model.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Profile"),
          ],
        ),
        actions: [
         PopupMenuButton(
           elevation: 1,
             padding: const EdgeInsets.only(bottom: 5),
             icon: const Icon(Icons.settings_outlined),
             itemBuilder: (context)=>
             [
           const PopupMenuItem(

               child: Text("Privacy & Security",)
           ),
           const PopupMenuItem(
               child: Text("Theme")
           ),
           const PopupMenuItem(
               child: Text("Language")
           ),
           const PopupMenuItem(
               child: Text("User Agreement")
           ),
         ]),
        ],
      ),
      body: ListView(
        children:  [
          Column(
            children: [
              GestureDetector(
                onTap: (){
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          builder: (context){
                        return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          height: 210,
                         child: Column( children: [...List.generate(2, (index) {
                          return  Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: (){
                                  if(index==1){
                                    
                                  }
                              },
                              child: Card(
                                elevation: 0,
                                shadowColor: Colors.black12,
                                child: ListTile(
                                  leading: Icon(profileimage[index].icon),
                                  title: Text(profileimage[index].name),
                                  trailing: const Icon(Icons.chevron_right_outlined),
                                ),
                              ),
                            ),
                          );
                         }
                         ),
                         ],
                         ),
                        );
                          }
                          );
                },
                child: const CircleAvatar(
                  radius: 75,
                  child: Icon(Icons.person, size: 50,),
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                "Aryan Singh",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                    "Mathura"
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,),
      ...List.generate(5, (index) {
         return  Padding(
           padding: const EdgeInsets.only(bottom: 20),
           child: Card(
             elevation: 0.5,
             shadowColor: Colors.black12,
             child: ListTile(
               leading: Icon(profilecard[index].icon),
               title: Text(profilecard[index].title),
               trailing: const Icon(Icons.chevron_right_outlined),
             ),
           ),
         );
       }
       ),
        ],
      ),
    );
  }
}


