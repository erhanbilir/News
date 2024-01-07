import 'package:flutter/material.dart';
import 'package:onlynews/pages/about.dart';
import 'package:onlynews/pages/settings.dart';
import 'package:onlynews/pages/userinput.dart';
import 'package:onlynews/widget/navigation_drawer_widget_2.dart';
import 'package:provider/provider.dart';

import '../theme_provider.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  String email = '';

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
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
              leading: Icon(
                Icons.videogame_asset_rounded,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Game',
              ),
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
              leading: Icon(
                Icons.help_outline_sharp,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Yardım',
              ),
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
              leading: Icon(
                Icons.groups,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Hakkımızda',
              ),
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
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                'Ayarlar',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => settings(),
                  ),
                );
              },
            ),
            IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              icon: Icon(Icons.sunny),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              icon: Icon(Icons.ac_unit),
            ),
            Row(
              children: <Widget>[
                // Giriş yap butonu veya çıkış yap butonu
                isLoggedIn
                    ? ElevatedButton(
                        onPressed: () {
                          // Çıkış yap butonuna basıldığında
                          setState(() {});
                        },
                        child: Text('Çıkış Yap'),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          // Giriş yap butonuna basıldığında
                          setState(() {});
                        },
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => userinput()),
                            );
                          },
                          child: Text('Giriş Yap'),
                        ),
                      ),
              ],
            )
          ],
        ),
      );
}
