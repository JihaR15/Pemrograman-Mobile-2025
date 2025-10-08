import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter layout: Jiha Ramdhan - 2341720043',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => ItemPage(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
