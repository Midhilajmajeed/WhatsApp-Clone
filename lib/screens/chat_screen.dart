import 'package:flutter/material.dart';
import 'package:whatsapp_project/data/dummy_data.dart';
import 'package:whatsapp_project/screens/new_chat.dart';

import 'package:whatsapp_project/widgets/chat_screen_content.dart';
import 'package:whatsapp_project/widgets/search_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  void onTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => NewChatScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 33, 163, 93),
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
      body: ListView(
        children: [
          const SearchBarWidget(),
          for (final detail in dummyDetails) ChatScreenContents(detail: detail),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onTap(context);
        },
        backgroundColor: const Color.fromARGB(255, 29, 171, 97),
        foregroundColor: Colors.white,
        child: const RotatedBox(
            quarterTurns: 2, child: Icon(Icons.add_comment_rounded)),
      ),
    );
  }
}
