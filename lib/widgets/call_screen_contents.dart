import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_project/models/details.dart';

class CallScreenContent extends StatelessWidget {
  const CallScreenContent({super.key, required this.callDetail});

  final CallDetails callDetail;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: callDetail.image,
            ),
            const SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(callDetail.name,style: GoogleFonts.lato(fontSize:16),),
                Row(
                  children: [
                    Icon(callDetail.iconSmall,color: Colors.green,size: 16,),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(callDetail.datetime),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Icon(callDetail.iconlarge, color: Colors.green,)
          ],
        ),
        const SizedBox(height: 24,)
      ],
    );
   
  }
}
