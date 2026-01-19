import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/utils/devices_breakpoints.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> contentList = [
      [
        "Safe & Secure",
        "All our vehicles are regularly maintained and equipped with safety features. Professional drivers ensure your journey is secure.",
      ],
      [
        "Best Prices",
        "Competitive pricing with no hidden charges. Get transparent quotes and value for money on every trip.",
      ],
      [
        "Professional Drivers",
        "Experienced and courteous drivers with valid licenses. Your comfort and safety are our top priorities.",
      ],
      [
        "24/7 Availability",
        "Round-the-clock service for all your travel needs. Book anytime, travel anytime with Tannu Tour and Travels.",
      ],
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final double screenWidth = constraints.maxWidth;
        final bool isMobile = screenWidth < mobileBreakpoint;
        final bool isTablet =
            screenWidth >= mobileBreakpoint && screenWidth < tabletBreakpoint;

        // Responsive values
        final double horizontalMargin = isMobile ? 16 : (isTablet ? 32 : 60);
        final double titleFontSize = isMobile ? 24 : (isTablet ? 30 : 35);
        final double subtitleFontSize = isMobile ? 14 : 16;
        final double sectionSpacing = isMobile ? 20 : 30;

        return Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: horizontalMargin,
                vertical: 11,
              ),
              child: Column(
                children: [
                  Text(
                    "Why Choose Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Discover the reasons why Tannu Tour and Travels is the best choice for your travel needs.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.9),
                      fontSize: subtitleFontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: sectionSpacing),

            Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 11,
              spacing: 11,
              children: [
                _detailCard(
                  Icons.shield_outlined,
                  contentList[0][0],
                  contentList[0][1],
                ),
                _detailCard(
                  Icons.attach_money_outlined,
                  contentList[1][0],
                  contentList[1][1],
                ),
                _detailCard(
                  Icons.thumb_up_outlined,
                  contentList[2][0],
                  contentList[2][1],
                ),
                _detailCard(
                  Icons.watch_later_outlined,
                  contentList[3][0],
                  contentList[3][1],
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  dynamic _detailCard(IconData icon, String title, String subtitle) {
    return Container(
      width: 250,
      height: 210,
      padding: EdgeInsets.fromLTRB(18, 11, 18, 11),
      // constraints: BoxConstraints(minWidth: 300, maxWidth: 400),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blue),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black.withValues(alpha: 1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black.withValues(alpha: 0.9),
              // fontSize: 16,
              // fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
