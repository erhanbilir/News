import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onlynews/colors.dart';

class ehoca extends StatelessWidget {
  const ehoca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(secondcolor),
      appBar: AppBar(
        backgroundColor: HexColor(primarycolor),
        title: Text(
          'Tanımayanlar için: EMİR ÖZTÜRK',
          style: TextStyle(color: HexColor(secondcolor), fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('images/ehoca.jpeg')],
      ),
    );
  }
}
