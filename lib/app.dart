import 'package:flutter/material.dart';
import 'package:whatsapp_ui/views/screens/mainNavbarScreen/main_navbar_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainNavbarScreen(),
    );
  }
}