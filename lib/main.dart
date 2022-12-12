import 'package:flutter/material.dart';
import 'package:list_viwe_1/screen/list_viwe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'list viwe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: listView1(),
    );
  }
}
