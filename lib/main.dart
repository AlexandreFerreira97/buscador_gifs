import 'package:buscador_gifs/pages/gif_page.dart';
import 'package:flutter/material.dart';
import 'package:buscador_gifs/pages/homePage.dart';
import 'package:buscador_gifs/pages/gif_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GifPage(),
      theme: ThemeData(hintColor: Colors.white),
    );
  }
}