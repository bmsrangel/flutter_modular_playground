import 'package:flutter/material.dart';

class NewBPage extends StatefulWidget {
  const NewBPage({super.key});

  @override
  State<NewBPage> createState() => _NewBPageState();
}

class _NewBPageState extends State<NewBPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New B Page'),
      ),
      body: Container(),
    );
  }
}
