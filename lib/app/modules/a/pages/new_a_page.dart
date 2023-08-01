import 'package:flutter/material.dart';

class NewAPage extends StatefulWidget {
  const NewAPage({super.key});

  @override
  State<NewAPage> createState() => _NewAPageState();
}

class _NewAPageState extends State<NewAPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New A Page'),
      ),
      body: Container(),
    );
  }
}
