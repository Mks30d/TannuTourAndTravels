import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/sections/animated_section.dart';
import 'package:tannu_tour_and_travels/sections/header.dart';
import 'package:tannu_tour_and_travels/sections/our_services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 20),
            AnimatedSection(),
            SizedBox(height: 20),
            OurServices(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
