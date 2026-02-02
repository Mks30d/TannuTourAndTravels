import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/utils/devices_breakpoints.dart';
import 'package:tannu_tour_and_travels/widgets/my_subtitle.dart';
import 'package:tannu_tour_and_travels/widgets/my_title.dart';

class ServingAllAcrossIndiaSection extends StatefulWidget {
  const ServingAllAcrossIndiaSection({super.key});

  @override
  State<ServingAllAcrossIndiaSection> createState() =>
      _ServingAllAcrossIndiaSectionState();
}

class _ServingAllAcrossIndiaSectionState
    extends State<ServingAllAcrossIndiaSection> {
  final List<String> indianStates = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double screenWidth = constraints.maxWidth;
        final bool isMobile = screenWidth < mobileBreakpoint;
        final bool isTablet =
            screenWidth >= mobileBreakpoint && screenWidth < tabletBreakpoint;
        final bool isDesktop = screenWidth >= tabletBreakpoint;

        // Responsive values
        final double horizontalMargin = isMobile ? 16 : (isTablet ? 32 : 60);
        final double titleFontSize = isMobile ? 24 : (isTablet ? 30 : 35);
        final double subtitleFontSize = isMobile ? 14 : 16;
        final double sectionSpacing = isMobile ? 20 : 30;

        return Container(
          color: Colors.grey.withValues(alpha: 0.1),
          child: Column(
            children: [
              SizedBox(height: 11),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: horizontalMargin,
                  vertical: 11,
                ),
                child: Column(
                  children: [
                    MyTitle(
                      title: "Serving All Across India",
                      fontSize: titleFontSize,
                    ),

                    MySubtitle(
                      title:
                          "From Kashmir to Kanyakumari, Kutch to Kohima - Tannu Tour and Travels provides reliable transportation services throughout India",
                      fontSize: subtitleFontSize,
                    ),
                    ],
                ),
              ),

              SizedBox(height: sectionSpacing),

              Container(
                height: isDesktop ? 665 : null,
                margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(isMobile ? 16 : 22),
                ),
                child: isDesktop
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: _buildMapSection(isMobile, isTablet)),
                          Expanded(
                            child: _buildStateSection(
                              isMobile,
                              isTablet,
                              isDesktop,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildMapSection(isMobile, isTablet),
                          _buildStateSection(isMobile, isTablet, isDesktop),
                        ],
                      ),
              ),

              SizedBox(height: sectionSpacing),
            ],
          ),
        );
      },
    );
  }

  // =================== Map Section ====================
  Widget _buildMapSection(bool isMobile, bool isTablet) {
    final double padding = isMobile ? 20 : (isTablet ? 28 : 35);
    final double cardTitleSize = isMobile ? 16 : 20;
    final double cardSubtitleSize = isMobile ? 10 : 12;

    return ClipRRect(
      borderRadius: BorderRadius.circular(isMobile ? 16 : 22),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/locations/indiaMap.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Color(0xff144EED).withValues(alpha: 0.9),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(isMobile ? 12 : 18),
                child: Image.asset(
                  "assets/images/locations/indiaMap.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: isMobile ? 12 : 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildExpandedCard(
                    "28+",
                    "States & UTs",
                    cardTitleSize,
                    cardSubtitleSize,
                    isMobile,
                  ),
                  SizedBox(width: isMobile ? 8 : 11),
                  _buildExpandedCard(
                    "500+",
                    "Cities",
                    cardTitleSize,
                    cardSubtitleSize,
                    isMobile,
                  ),
                  SizedBox(width: isMobile ? 8 : 11),
                  _buildExpandedCard(
                    "10k+",
                    "Trips",
                    cardTitleSize,
                    cardSubtitleSize,
                    isMobile,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandedCard(
    String title,
    String subtitle,
    double titleSize,
    double subtitleSize,
    bool isMobile,
  ) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 6 : 8,
          vertical: isMobile ? 8 : 11,
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(207, 105, 145, 255),
          borderRadius: BorderRadius.circular(isMobile ? 8 : 11),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: titleSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white, fontSize: subtitleSize),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // =================== State Section ====================
  Widget _buildStateSection(bool isMobile, bool isTablet, bool isDesktop) {
    final double padding = isMobile ? 16 : 18;
    final double headerFontSize = isMobile ? 16 : 18;
    final double bodyFontSize = isMobile ? 13 : 14;
    final double stateChipFontSize = isMobile ? 12 : 14;
    final double phoneFontSize = isMobile ? 18 : 22;
    final double labelFontSize = isMobile ? 11 : 12;
    final double stateTitleFontSize = isMobile ? 13 : (isTablet ? 14 : 15);

    return Container(
      padding: EdgeInsets.all(padding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pan-India Coverage Header
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pan-India Coverage",
                style: TextStyle(
                  fontSize: headerFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Experience seamless travel across every corner of India with our extensive network and well-maintained fleet.",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.7),
                  fontSize: bodyFontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          SizedBox(height: isMobile ? 12 : 16),

          // States Container
          Container(
            padding: EdgeInsets.all(isMobile ? 12 : 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 231, 255),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.pin_drop_outlined, size: isMobile ? 20 : 24),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        "All States & Union Territories We Serve",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: stateTitleFontSize,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11),
                Wrap(
                  spacing: 5,
                  runSpacing: 6,
                  children: indianStates
                      .map(
                        (state) => Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: isMobile ? 8 : 11,
                            vertical: isMobile ? 4 : 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            state,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: stateChipFontSize,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),

          SizedBox(height: isMobile ? 12 : 16),

          // Contact Card
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 14 : 18,
              vertical: isMobile ? 12 : 14,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff144EED),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Available 24/7 for Bookings",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: labelFontSize,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "+91 8239721861",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: phoneFontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Call us anytime, anywhere in India",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: labelFontSize,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
