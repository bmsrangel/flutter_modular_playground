import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String? _currentPath;

  @override
  void initState() {
    super.initState();
    Modular.to.navigate('/home/a/');
    Modular.to.addListener(_navigationPathListener);
  }

  @override
  void dispose() {
    super.dispose();
    Modular.to.removeListener(_navigationPathListener);
  }

  void _navigationPathListener() {
    if (Modular.to.path != _currentPath) {
      setState(() {
        _currentPath = Modular.to.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: ['/home/a/', '/home/b/'].contains(_currentPath)
          ? BottomNavigationBar(
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
            )
          : null,
    );
  }
}
