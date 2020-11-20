import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lotto Automatic System',
      theme: ThemeData(
        fontFamily: 'CookieRun',
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0
        ),
      ),
      home: MainHome(),
    );
  }
}
