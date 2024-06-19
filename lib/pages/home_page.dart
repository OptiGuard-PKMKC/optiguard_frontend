import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple[200],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.home,
              size: 80,
            )),

            // profile
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  '/profilepage',
                );
              },
            ),

            // settings
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  '/settingspage',
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.donut_large),
            label: 'Donut',
          ),

          //
          BottomNavigationBarItem(
            icon: Icon(Icons.no_drinks),
            label: 'Nod',
          ),
        ],
      ),
    );
  }
}
