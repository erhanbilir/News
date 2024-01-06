import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/colors.dart';
import 'package:onlynews/forgotpage.dart';
import 'package:onlynews/theme_provider.dart';
import 'package:provider/provider.dart';

class userinput extends StatelessWidget {
  const userinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //SingleChildScrollView widgetıyla oluşan kaydırmayı önler
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(
                context,
                listen: false,
              ).toggleTheme();
            },
            icon: Icon(
              Icons.sunny,
            ),
          ),
        ],
        toolbarHeight: 60,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Image.asset(
                  'images/onlynewsseffaf.png',
                  scale: 5,
                  fit: BoxFit
                      .fitWidth, // Resmi yatayda sığacak şekile getirmek için
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        //taşmayı önlemek için
        child: Column(
          children: [
            //heme giriş yazısı
            Container(
              color: HexColor(usercolor),
              height: 80,
              width: 500,
              child: Column(
                children: [
                  Text(
                    'HEMEN GİRİŞ YAP',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  Text(
                    'EN GÜNCEL HABERLERİ KAÇIRMA!',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.secondary),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            //email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  size: 75,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Container(
                  color: HexColor(usercolor),
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'E-mail adresinizi girin',
                      labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                )
              ],
            ),
            //şifre
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 75,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Container(
                  color: HexColor(usercolor),
                  width: 250,
                  child: TextField(
                    obscureText: true, //metin belirsizleştirme
                    decoration: InputDecoration(
                      labelText: 'Şifrenizi girin',
                      labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                )
              ],
            ),
            //şifremi unuttum
            Row(
              children: [
                const SizedBox(
                  width: 240,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forgotpage()),
                    );
                  },
                  child: Text(
                    'Şifremi unuttum',
                    style: TextStyle(
                        color: HexColor(thirdcolor),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            //giriş yap
            Container(
              width: 300,
              height: 75,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.tertiary),
                child: Text(
                  'GİRİŞ YAP',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            //hesabınız yok mu
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hesabınız yok mu? ',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Hemen Kaydolun',
                  style: TextStyle(
                      fontSize: 18,
                      color: HexColor(thirdcolor),
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
