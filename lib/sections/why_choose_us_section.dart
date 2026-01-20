import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/utils/colors.dart';
import 'package:tannu_tour_and_travels/utils/devices_breakpoints.dart';
import 'package:tannu_tour_and_travels/widgets/my_subtitle.dart';
import 'package:tannu_tour_and_travels/widgets/my_title.dart';

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

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: horizontalMargin,
                  vertical: 11,
                ),
                child: Column(
                  children: [
                    MyTitle(title: "Why Choose Us", fontSize: titleFontSize),
                    SizedBox(height: 6),
                    MySubtitle(
                      title:
                          "Discover the reasons why Tannu Tour and Travels is the best choice for your travel needs.",
                      fontSize: subtitleFontSize,
                    ),
                  ],
                ),
              ),

              SizedBox(height: sectionSpacing),

              Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 15,
                spacing: 15,
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
                    Icons.drive_eta_outlined,
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
          ),
        );
      },
    );
  }

  dynamic _detailCard(IconData icon, String title, String subtitle) {
    return Container(
      width: 300,
      height: 210,
      padding: EdgeInsets.fromLTRB(18, 11, 18, 11),
      decoration: BoxDecoration(
        color: primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: primaryColor, size: 40),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 11, 0, 2),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black.withValues(alpha: 1),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.black.withValues(alpha: 0.9)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
