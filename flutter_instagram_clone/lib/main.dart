import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/instagram_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Colors.black),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Color.fromARGB(255, 255, 255, 255))),
      home: InstaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
