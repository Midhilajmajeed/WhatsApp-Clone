import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_project/models/details.dart';

class NewChatContacts extends StatelessWidget {
  const NewChatContacts({super.key,required this.detail});
  final NewContactList detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: detail.image,
            ),
            const SizedBox(
              width: 16,
            ),
            if (detail.message.isEmpty)
              Text(
                detail.name,
                style:
                    GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail.name,
                    style: GoogleFonts.lato(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(detail.message),
                ],
              ),
          ],
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
