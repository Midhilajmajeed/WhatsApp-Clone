import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_project/data/dummy_data.dart';
import 'package:whatsapp_project/widgets/green_container.dart';
import 'package:whatsapp_project/widgets/new_call_content.dart';

class NewCall extends StatelessWidget {
  const NewCall({super.key});
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
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black.withOpacity(0.1)),
                      bottom:
                          BorderSide(color: Colors.black.withOpacity(0.1)))),
              child: Center(
                child: Text(
                  'Add up to 31 people',
                  style: GoogleFonts.lato(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      const GreenContainer(icon: Icons.link),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        'New call link',
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
                      const GreenContainer(
                          icon: Icons.person_add_alt_1_rounded),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        'New Contact',
                        style: GoogleFonts.lato(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 186,
                      ),
                      Icon(
                        Icons.qr_code_sharp,
                        color: Colors.black.withOpacity(0.6),
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
            NewCallContent(detail: detail)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
