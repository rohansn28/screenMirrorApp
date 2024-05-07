import 'package:flutter/material.dart';
import 'package:screenmirroring_app/screens/projectorarticals.dart';
import 'package:screenmirroring_app/screens/projectorporductScreen.dart';
import 'package:screenmirroring_app/screens/youtubevideoScreen.dart';

class ProjectorScreen extends StatefulWidget {
  const ProjectorScreen({super.key});

  @override
  State<ProjectorScreen> createState() => _ProjectorScreenState();
}

class _ProjectorScreenState extends State<ProjectorScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ProjectorArticals(),
    YoutubeVideoScreen(),
    ProductScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Article',
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded),
              label: 'Videos',
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Store',
              // backgroundColor: Colors.purple,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
