import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Modular.to.navigate('/home/a/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
          switch (_currentIndex) {
            case 0:
              Modular.to.navigate('/home/a/');
              break;
            case 1:
              Modular.to.navigate('/home/b/');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc,
            ),
            label: 'A Module',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc,
            ),
            label: 'B Module',
          ),
        ],
      ),
    );
  }
}
