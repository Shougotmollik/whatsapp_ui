import 'package:flutter/material.dart';
import 'package:whatsapp_ui/views/widgets/custom_appbar.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppbar(
        titleText: 'Calls',
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network('https://pics.craiyon.com/2023-10-23/903eec12f88642079733f99cf3e1eb17.webp'),
          ),
          title: const Text('Contact Name'),
          subtitle: const Wrap(
            children: [
              Text('Yesterday '),
              Text(' 12:30 AM'),
            ],
          ),
          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
        ),),
    );
  }
}
