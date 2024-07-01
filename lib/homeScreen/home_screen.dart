import 'package:flutter/material.dart';
import 'package:whatsapp_ui/homeScreen/calls_screen.dart';
import 'package:whatsapp_ui/homeScreen/chats_screen.dart';
import 'package:whatsapp_ui/homeScreen/communities_screen.dart';
import 'package:whatsapp_ui/homeScreen/update_screen.dart';
import 'package:whatsapp_ui/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  final List<Widget> _screens = const [
    ChatsScreen(),
    UpdateScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: (value) {
            if (mounted) {
              _selectIndex = value;
              setState(() {});
            }
          },
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: AppColors.primaryColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.broadcast_on_personal_outlined),
                label: "Updates"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_sharp), label: "Communities"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          ]),
    );
  }
}
