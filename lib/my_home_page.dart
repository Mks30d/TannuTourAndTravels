import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/sections/animated_section.dart';
import 'package:tannu_tour_and_travels/sections/header.dart';
import 'package:tannu_tour_and_travels/sections/serving_all_across_india_section.dart';
import 'package:tannu_tour_and_travels/sections/our_services.dart';
import 'package:tannu_tour_and_travels/sections/popular_destinations_section.dart';
import 'package:tannu_tour_and_travels/sections/why_choose_us_section.dart';

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
            SizedBox(height: 30),
            ServingAllAcrossIndiaSection(),
            SizedBox(height: 20),
            WhyChooseUsSection(),
            SizedBox(height: 20),
            PopularDestinationsSection(),
            SizedBox(height: 20),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
