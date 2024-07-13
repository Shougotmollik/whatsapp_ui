import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.titleText});

  final String titleText;

  @override
  Widget build(BuildContext context) {

    return  AppBar(
      title:  Text(titleText),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_sharp)),
      ],
    );
  }

  @override

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
