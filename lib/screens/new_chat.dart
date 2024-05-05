import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_project/data/dummy_data.dart';
import 'package:whatsapp_project/widgets/green_container.dart';
import 'package:whatsapp_project/widgets/new_chat_contacts.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select contact',
              style: GoogleFonts.lato(fontSize: 15),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              '241 contacts',
              style: GoogleFonts.lato(fontSize: 12),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          RotatedBox(
            quarterTurns: 1,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_control,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Row(
              children: [
                const GreenContainer(icon: Icons.group_add),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'New group',
                  style: GoogleFonts.lato(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                const GreenContainer(icon: Icons.person_add_alt_1_rounded),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'New Contact',
                  style: GoogleFonts.lato(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 180,
                ),
                Icon(
                  Icons.qr_code_sharp,
                  color: Colors.black.withOpacity(0.6),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                const GreenContainer(icon: Icons.group_add),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  'New community',
                  style: GoogleFonts.lato(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Contacts on WhatsApp',
              style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16,),
            for(final detail in newContactContent)
            NewChatContacts(detail: detail)
          ],
        ),
      ),
    );
  }
}
