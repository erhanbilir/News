import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/about.dart';
import 'package:onlynews/settings.dart';
import 'package:onlynews/userinput.dart';

class NavigationDrawerWidget extends StatelessWidget {
  String email = '';
  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: HexColor('FFFFFF'),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userinput()),
                          );
                        },
                        icon: Icon(
                          Icons.person,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ),
                    Text('$email'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.videogame_asset_rounded),
              title: const Text('Game'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => userinput(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline_sharp),
              title: const Text('Yardım'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => userinput(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.groups),
              title: const Text('Hakkımızda'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => about(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => settings(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
