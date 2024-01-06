import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/colors.dart';
import 'package:onlynews/mainpage.dart';
import 'package:onlynews/theme_provider.dart';
import 'package:provider/provider.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            icon: Icon(
              Icons.sunny,
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hoşgeldiniz',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'images/basşlangıc.jpeg',
                width: 300,
              ),
              const Text('Güncel haberlere anında ulaşmak için takipte kalın'),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mainPage()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.background,
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                ),
                child: Container(
                  width: 200,
                  height: 80,
                  child: const Center(
                    child: Text(
                      'Hadi Başlayalım',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
