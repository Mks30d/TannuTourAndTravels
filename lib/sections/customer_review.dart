import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/utils/devices_breakpoints.dart';
import 'package:tannu_tour_and_travels/widgets/my_subtitle.dart';
import 'package:tannu_tour_and_travels/widgets/my_title.dart';

class CustomerReview extends StatelessWidget {
  const CustomerReview({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> contentList = [
      [
        "Rajesh Kumar, Delhi",
        "Booked a sedan for a family trip to Jaipur. The car was in perfect condition and the journey was smooth. Great value for money!",
      ],
      [
        "Priya Sharma, Mumbai",
        "Used their luxury coach for our corporate outing. Everyone was impressed with the service. Will definitely book again.",
      ],
      [
        "Amit Patel, Ahmedabad",
        "Very reliable and punctual service. The driver was courteous and knew the routes well. Made our trip to Goa memorable!",
      ],
      [
        "Sneha Reddy, Bangalore",
        "Excellent service! The bus was clean, comfortable, and the driver was very professional. Highly recommended for group tours.",
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

        return Container(
          color: Colors.grey.withValues(alpha: 0.1),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: horizontalMargin,
                  vertical: 11,
                ),
                child: Column(
                  children: [
                    MyTitle(
                      title: "What Our Customers Say",
                      fontSize: titleFontSize,
                    ),
                    SizedBox(height: 6),
                    MySubtitle(
                      title:
                          "Read what our satisfied customers have to say about their experiences with Journey Travel Company.",
                      fontSize: subtitleFontSize,
                    ),
                  ],
                ),
              ),

              SizedBox(height: sectionSpacing),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalMargin,
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 15,
                  spacing: 15,
                  children: [
                    _detailCard(contentList[0][0], contentList[0][1], false),
                    _detailCard(contentList[1][0], contentList[1][1], true),
                    _detailCard(contentList[2][0], contentList[2][1], false),
                    _detailCard(contentList[3][0], contentList[3][1], true),
                  ],
                ),
              ),

              SizedBox(height: 22),
            ],
          ),
        );
      },
    );
  }

  dynamic _detailCard(String title, String subtitle, bool halfStar) {
    return Card(
      child: Container(
        width: 300,
        height: 240,
        padding: EdgeInsets.fromLTRB(18, 11, 18, 11),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 1),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/quote.png", height: 40),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 243, 223, 46),
                ),
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 243, 223, 46),
                ),
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 243, 223, 46),
                ),
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 243, 223, 46),
                ),

                halfStar
                    ? Icon(
                        Icons.star_half,
                        color: const Color.fromARGB(255, 243, 223, 46),
                      )
                    : Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 243, 223, 46),
                      ),
              ],
            ),

            SizedBox(height: 8),

            Text(
              title,
              style: TextStyle(color: Colors.black.withValues(alpha: 0.9)),
            ),
          ],
        ),
      ),
    );
  }
}
