import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/custom_appbar.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Calls",
        titleFontWeight: FontWeight.normal,
      ),
    );
  }
}
