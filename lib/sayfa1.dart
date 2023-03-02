import 'package:flutter/material.dart';
import 'package:ort_hesap/sayfa2.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        appBarTheme: AppBarTheme(
          color: Colors.purple,
        ),
      ),
      home: PageTwo(),
    );
  }
}
