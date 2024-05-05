import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp_project/data/dummy_data.dart';

import 'package:whatsapp_project/screens/new_call.dart';
import 'package:whatsapp_project/widgets/call_screen_contents.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  void onTapNewCall(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (ctx) => NewCall()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calls',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.qr_code_scanner),
              ),
              const SizedBox(
                width: 2,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
              ),
              const SizedBox(
                width: 2,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              const SizedBox(
                width: 2,
              ),
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
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 29, 171, 97),
                      borderRadius: BorderRadius.circular(24)),
                  child: const Icon(
                    Icons.link,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create call link',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const Text('Share a link for your WhatsApp call')
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Recent',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 18,
            ),
            for (final callDetail in dummyCalldetails)
              CallScreenContent(callDetail: callDetail)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onTapNewCall(context);
        },
        backgroundColor: const Color.fromARGB(255, 29, 171, 97),
        foregroundColor: Colors.white,
        child: Icon(MdiIcons.phonePlus),
      ),
    );
  }
}
