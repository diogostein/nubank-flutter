import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nubank/home/home_page.dart';
import 'package:nubank/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.dark,
      home: HomePage(),
    );
  }
}
