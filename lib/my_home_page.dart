import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/sections/animated_section.dart';
import 'package:tannu_tour_and_travels/sections/header.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Header(), AnimatedSection()]));
  }
}
