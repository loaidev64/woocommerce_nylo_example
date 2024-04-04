import 'package:flutter/material.dart';
import 'package:flutter_app/resources/pages/home_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

class MainPage extends NyStatefulWidget {
  static const path = '/main';

  MainPage({super.key}) : super(path, child: _MainPageState());
}

class _MainPageState extends NyState<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Container(
      child: Text("Tab 2"),
    ),
    Container(
      child: Text("Tab 3"),
    ),
    Container(
      child: Text("Tab 4"),
    ),
  ];

  @override
  init() async {}

  /// Use boot if you need to load data before the [view] is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'.tr(),
          ),
        ],
      ),
    );
  }
}
