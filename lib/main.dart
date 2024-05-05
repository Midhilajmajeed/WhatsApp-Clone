import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_project/screens/tabs.dart';

final theme = ThemeData(
  textTheme: GoogleFonts.latoTextTheme(),
);
void main() {
  runApp(
    MaterialApp(
      theme: theme,
      home: const TabsScreen(),
    ),
  );
}
