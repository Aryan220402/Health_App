import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ProfileCard{
  final String title;

  final IconData icon;
  ProfileCard( this.title,  this.icon);
}
List<ProfileCard> profilecard=[
  ProfileCard("Notification", Icons.notifications_outlined),
  ProfileCard("Location", Icons.location_on_outlined),
  ProfileCard("Help", Icons.help_outlined),
  ProfileCard("About", Icons.accessibility_outlined),
  ProfileCard("Log out", Icons.logout_outlined),
];

class ProfileImage{
  final String name;
  final IconData icon;

  ProfileImage(this.name, this.icon);
}
List<ProfileImage> profileimage=[
  ProfileImage("Show Profile Image", Icons.image_outlined),
  ProfileImage("Change Profile Image", Icons.image),
];

// class ChooseImage{
//   final IconData icon;
//   ChooseImage(this.icon);
// }
// List<ChooseImage> chooseimage=[
//   ChooseImage(Icons.camera_alt_outlined),
//   ChooseImage(Icons.image_outlined),
// ];
// onTap: (){
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// ...List.generate(2, (index) {
// return  Card(
// elevation: 1,
// shadowColor: Colors.black12,
// child: CircleAvatar(
// radius: 30,
// child: Icon(chooseimage[index].icon),
// ),
// );
// })
// ],
// );
// },