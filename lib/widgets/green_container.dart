import 'package:flutter/material.dart';

class GreenContainer extends StatelessWidget {
  const GreenContainer({super.key,required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 29, 171, 97),
          borderRadius: BorderRadius.circular(20)),
      child:  Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
