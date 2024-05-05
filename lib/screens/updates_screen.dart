import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_project/widgets/find_channels_contents.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Updates',
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
      // bottomNavigationBar: const BottomNavigationBarContent(),
      body: Container(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Status',
                  style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
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
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/image-1.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/image-2.jpg'),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/image-3.jpg'),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/image-4.jpg'),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/image-5.jpg'),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/image-6.jpg'),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/image-7.jpg'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text(
                  'Channels',
                  style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/images/image-12.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ABP News',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          SizedBox(width: 190),
                          Text(
                            '6:21 pm',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.link,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text('ABP News is an Indian news ...'),
                          const SizedBox(
                            width: 56,
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Text(
                              '2,827',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Text(
                  'Find channels',
                  style: GoogleFonts.lato(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const Text('see all'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FindChannelsContents(
                    image: 'assets/images/image-13.png',
                    text: 'New18 India',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FindChannelsContents(
                    image: 'assets/images/image-8.jpg',
                    text: 'David Smith',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FindChannelsContents(
                    image: 'assets/images/image-9.jpg',
                    text: 'Olivia Taylor',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FindChannelsContents(
                    image: 'assets/images/image-7.jpg',
                    text: 'Emma Garcia',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 29, 171, 97),
        foregroundColor: Colors.white,
        child: const Icon(Icons.camera_alt_rounded),
      ),
    );
  }
}
