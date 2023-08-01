import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_modular/app/modules/b/b_controller.dart';

class BPage extends StatefulWidget {
  const BPage({super.key});

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  final bController = Modular.get<BController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to New B Page'),
          onPressed: () {
            Modular.to.pushNamed('new_b');
          },
        ),
      ),
    );
  }
}
