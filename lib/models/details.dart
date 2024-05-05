import 'package:flutter/material.dart';

class Details {
  const Details(
      {required this.name,
      required this.time,
      required this.icon,
      required this.message,
      required this.image});

  final AssetImage image;
  final String name;
  final String time;
  final IconData icon;
  final String message;
}

class CallDetails {
  const CallDetails(
      {required this.image,
      required this.name,
      required this.datetime,
      required this.iconSmall,
      required this.iconlarge});

  final AssetImage image;
  final String name;
  final String datetime;
  final IconData iconSmall;
  final IconData iconlarge;
}

class NewContactList {
  const NewContactList(
      {required this.image, required this.name, required this.message});
  final AssetImage image;
  final String name;
  final String message;
}
