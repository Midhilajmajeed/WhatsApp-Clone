import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Communities',
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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 210, 215, 219),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.groups_outlined,
                    color: Colors.white.withOpacity(0.8),
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'New community',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 239, 241, 247),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 210, 215, 219),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.groups_outlined,
                    color: Colors.white.withOpacity(0.8),
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'PSC-ALPHABETS',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 254, 207),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    MdiIcons.bullhorn,
                    color: Color.fromARGB(255, 26, 101, 71),
                    size: 26,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Announcements',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            width: 103,
                          ),
                          const Text('8:09 am')
                        ],
                      ),
                      const Text('PSC universe: Plus two students'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 254, 207),
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    MdiIcons.bullhorn,
                    color: Color.fromARGB(255, 26, 101, 71),
                    size: 26,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PSC ALPHABETS 4',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            width: 68,
                          ),
                          const Text('31/03/24')
                        ],
                      ),
                      const Text(
                          'As a member you can join groups in the co...'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                // Icon(
                //   Icons.keyboard_arrow_right_rounded,
                //   size: 28,
                // ),
                const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.keyboard_arrow_right_rounded),
                  iconSize: 24,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'View all',
                  style: GoogleFonts.lato(
                      fontSize: 17, color: Colors.black.withOpacity(0.6)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
