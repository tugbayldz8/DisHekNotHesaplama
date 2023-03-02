import 'package:flutter/material.dart';
import 'package:ort_hesap/sayfa3_1.dart';

class PageFour extends StatelessWidget {
  PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        appBarTheme: AppBarTheme(
          color: Colors.purple,
        ),
      ),
      home: PageThree(),
    );
  }
}
