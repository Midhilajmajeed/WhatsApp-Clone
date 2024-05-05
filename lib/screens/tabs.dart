import 'package:flutter/material.dart';
import 'package:whatsapp_project/screens/calls_screen.dart';
import 'package:whatsapp_project/screens/chat_screen.dart';
import 'package:whatsapp_project/screens/communities_screen.dart';
import 'package:whatsapp_project/screens/updates_screen.dart';
import 'package:whatsapp_project/widgets/bottom_navigation_bar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const ChatScreen();
    if (_selectedPageIndex == 1) {
      activePage = const UpdatesScreen();
    }
    if(_selectedPageIndex == 2){
      activePage = const CommunitiesScreen();
    }
    if(_selectedPageIndex == 3){
      activePage = const CallsScreen();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBarContent(onSelect: _selectPage,index: _selectedPageIndex,),
    );
  }
}
