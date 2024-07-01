import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.appBarTitle,
    this.titleColor,
    this.titleFontWeight,
  });

  final String? appBarTitle;
  final Color? titleColor;
  final FontWeight? titleFontWeight;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle!,
        style: TextStyle(
          fontWeight: titleFontWeight,
          color: titleColor,
          letterSpacing: 1,
          fontSize: 28,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
