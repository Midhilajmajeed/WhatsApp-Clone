import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindChannelsContents extends StatelessWidget {
  const FindChannelsContents(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: GoogleFonts.lato(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 38)),
              elevation: MaterialStatePropertyAll(0),
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 210, 250, 204)),
              foregroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 31, 96, 62),
              ),
            ),
            child: const Text('Follow'),
          )
        ],
      ),
    );
  }
}
