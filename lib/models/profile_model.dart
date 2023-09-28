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
