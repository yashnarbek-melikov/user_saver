import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_saver/presentation/pages/all_user/all_user.dart';
import 'package:user_saver/presentation/pages/saved_user/saved_user.dart';
import 'package:user_saver/presentation/styles/theme_wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    AllUser(),
    SavedUser()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('User Saver'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'All Users',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: 'Saved Users',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      );
    });
  }
}
