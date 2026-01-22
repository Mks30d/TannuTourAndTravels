import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/sections/book_journey_form.dart';
import 'package:tannu_tour_and_travels/utils/devices_breakpoints.dart';
import 'package:tannu_tour_and_travels/widgets/my_subtitle.dart';
import 'package:tannu_tour_and_travels/widgets/my_title.dart';

class BookYourJourney extends StatelessWidget {
  const BookYourJourney({super.key});

  @override
  Widget build(BuildContext context) {
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
                  MyTitle(title: "Book Your Journey", fontSize: titleFontSize),
                  SizedBox(height: 6),
                  MySubtitle(
                    title:
                        "Fill out the form below and we'll get back to you with the best options for your trip.",
                    fontSize: subtitleFontSize,
                  ),
                ],
              ),
            ),

            SizedBox(height: sectionSpacing),

            BookJourneyForm(),

            SizedBox(height: 22),
          ],
        );
      },
    );
  }
}
