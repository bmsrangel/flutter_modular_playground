import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playground_modular/app/modules/a/a_controller.dart';
import 'package:playground_modular/app/modules/a/a_module.dart';

class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  late final AController aController;

  @override
  void initState() {
    super.initState();
    Modular.bindModule(AModule());
    aController = Modular.get<AController>();
  }

  @override
  void dispose() {
    super.dispose();
    Modular.unbindModule<AModule>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to New A Page'),
          onPressed: () {
            Modular.to.pushNamed('./a/new_a');
          },
        ),
      ),
    );
  }
}
