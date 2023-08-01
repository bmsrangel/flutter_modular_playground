import 'package:flutter/material.dart';
import 'package:playground_modular/app/modules/a/a_page.dart';
import 'package:playground_modular/app/modules/b/b_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          APage(),
          BPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
          _pageController.jumpToPage(value);
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
