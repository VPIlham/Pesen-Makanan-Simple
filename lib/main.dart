import 'package:flutter/material.dart';
import 'package:makanan_app/page/home.dart';
import 'package:makanan_app/page/invoice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restoran Ilham',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
