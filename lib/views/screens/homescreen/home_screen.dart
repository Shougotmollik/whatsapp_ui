import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue.shade100,
            elevation: 3.0,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu2whjzwoBz71waeE07wh1L_sfjpdm6IIf7g&s",
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text('Contact Name'),
              subtitle: const Text('all message are here'),
              trailing: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('12/3/24'),
                  Text('2'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
