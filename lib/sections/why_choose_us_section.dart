import 'package:flutter/material.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Why Choose Us",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),

        Text(
          "Discover the reasons why Tannu Tour and Travels is the best choice for your travel needs.",
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: 22),

        Wrap(
          alignment: WrapAlignment.center,
          children: [
            detailCard(Icons.shield_outlined),
            detailCard(Icons.badge_outlined),
            detailCard(Icons.thumb_up_outlined),
            detailCard(Icons.watch_later_outlined),
          ],
        ),
      ],
    );
  }

  Container detailCard(IconData icon) {
    return Container(
      width: 200,
      padding: EdgeInsets.fromLTRB(18, 11, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blue),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              "Safe & Secure",
              style: TextStyle(
                color: Colors.black.withValues(alpha: 1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            "All our vehicles are regularly maintained and equipped with safety features. Professional drivers ensure your journey is secure.",
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.5),
              // fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
