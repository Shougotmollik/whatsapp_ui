import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/views/screens/callScreen/call_screen.dart';
import 'package:whatsapp_ui/views/screens/chatsScreen/chats_screen.dart';
import 'package:whatsapp_ui/views/screens/communitiesScreen/communities_screen.dart';
import 'package:whatsapp_ui/views/screens/statusScreen/status_screen.dart';

class MainNavbarScreen extends StatefulWidget {
  const MainNavbarScreen({super.key});

  @override
  State<MainNavbarScreen> createState() => _MainNavbarScreenState();
}

class _MainNavbarScreenState extends State<MainNavbarScreen> {
  int _selectedScreen=0;
  final List<Widget>_screens=const[
    ChatsScreen(),
    StatusScreen(),
    CommunitiesScreen(),
    CallScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens[_selectedScreen],

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedScreen,
        onTap: (value) {
          if(mounted){
            _selectedScreen=value;
            setState(() {

            });
          }

        },
          unselectedItemColor: Colors.black,
          selectedItemColor: AppColors.primaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const[
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates),label: 'Status'),
        BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Communities'),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls'),
      ]),
    );
  }
}
