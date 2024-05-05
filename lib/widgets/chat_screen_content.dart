import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_project/models/details.dart';

class ChatScreenContents extends StatelessWidget {
  const ChatScreenContents({super.key, required this.detail});
  final Details detail;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: detail.image,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(detail.name,
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        const Spacer(),
                        Text(
                          detail.time,
                          style: GoogleFonts.lato(
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          detail.icon,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(detail.message),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
