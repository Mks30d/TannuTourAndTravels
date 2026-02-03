import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tannu Tour And Travels',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: InteractiveViewer(
        panEnabled: true,
        scaleEnabled: true,
        minScale: 0.8,
        maxScale: 2.5,
        child: MyHomePage(),
      ),
    );
  }
}
