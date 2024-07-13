import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/views/widgets/custom_appbar.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const CustomAppbar(titleText: 'Chats'),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network('https://img.freepik.com/premium-photo/beautiful-cute-anime-girl-innocent-anime-teenage_744422-6798.jpg'),
          ),
          title:const Text('Contact Name'),
          subtitle: const Text('Message sent by others'),
          trailing:const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Yesterday'),
              Text('5'),
            ],
          ) ,
        ),),
    );
  }
}
