import 'package:flutter/material.dart';
import 'package:whatsapp_project/models/details.dart';

class UpdateScreenStatusContent extends StatelessWidget {
  const UpdateScreenStatusContent({super.key, required this.detail});

  final Details detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(30),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: detail.image,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
