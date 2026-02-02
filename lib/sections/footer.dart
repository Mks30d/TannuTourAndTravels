import 'package:flutter/material.dart';
import 'package:tannu_tour_and_travels/utils/devices_breakpoints.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < mobileBreakpoint;
    final isTablet =
        screenWidth >= mobileBreakpoint && screenWidth < tabletBreakpoint;

    return Column(
      children: [
        Image.asset(
          "assets/images/footer.jpg",
          height: isMobile
              ? 80
              : isTablet
              ? 100
              : 111,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 4, 50, 88).withValues(alpha: 0.9),
                const Color.fromARGB(255, 1, 32, 56).withValues(alpha: 0.9),
              ],
            ),
          ),
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: isMobile ? 12 : 20,
            horizontal: isMobile
                ? 12
                : isTablet
                ? 16
                : 20,
          ),
          child: Column(
            children: [
              isMobile
                  ? _buildMobileLayout()
                  : isTablet
                  ? _buildTabletLayout()
                  : _buildDesktopLayout(),

              Divider(
                thickness: 0.5,
                color: Colors.white.withValues(alpha: 0.4),
                indent: isMobile
                    ? 0
                    : isTablet
                    ? 20
                    : 55,
                endIndent: isMobile
                    ? 0
                    : isTablet
                    ? 20
                    : 55,
              ),

              Padding(
                padding: EdgeInsets.all(isMobile ? 12.0 : 18.0),
                child: Text(
                  "© 2026 Tannu Tour and Travels. All rights reserved.",
                  style: TextStyle(
                    fontSize: isMobile
                        ? 10
                        : isTablet
                        ? 11
                        : 12,
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Footer Card
  Widget _footerCard({required String title, required List<Widget> children}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        // color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_titleWidget(title), ...children],
      ),
    );
  }

  // Mobile Layout
  Widget _buildMobileLayout() {
    return Column(
      children: [
        _footerCard(
          title: "Tannu Tour and Travels",
          children: [
            _subtitleWidget(
              "Your trusted partner for comfortable and affordable travel solutions across India.",
            ),
          ],
        ),
        const SizedBox(height: 12),
        _footerCard(
          title: "Contact Us",
          children: [
            _subtitleWidget("+91 8239721861", icon: Icons.phone_outlined),
            _subtitleWidget(
              "tannutourandtravels@gmail.com",
              icon: Icons.email_outlined,
            ),
            _subtitleWidget(
              "Vidhyadhar Nagar, Jaipur",
              icon: Icons.location_on_outlined,
            ),
          ],
        ),
        const SizedBox(height: 12),
        _footerCard(
          title: "Our Services",
          children: [
            _subtitleWidget("Car Rental Services"),
            _subtitleWidget("Bus Rental Services"),
            _subtitleWidget("Corporate Travel"),
            _subtitleWidget("Tour Packages"),
          ],
        ),
      ],
    );
  }

  // Tablet Layout
  Widget _buildTabletLayout() {
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 12,
          runSpacing: 12,
          children: [
            SizedBox(
              width: 320,
              child: _footerCard(
                title: "Tannu Tour and Travels",
                children: [
                  _subtitleWidget(
                    "Your trusted partner for comfortable and affordable travel solutions across India.",
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 320,
              child: _footerCard(
                title: "Contact Us",
                children: [
                  _subtitleWidget("+91 8239721861", icon: Icons.phone_outlined),
                  _subtitleWidget(
                    "tannutourandtravels@gmail.com",
                    icon: Icons.email_outlined,
                  ),
                  _subtitleWidget(
                    "Vidhyadhar Nagar, Jaipur",
                    icon: Icons.location_on_outlined,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 320,
              child: _footerCard(
                title: "Our Services",
                children: [
                  _subtitleWidget("Car Rental Services"),
                  _subtitleWidget("Bus Rental Services"),
                  _subtitleWidget("Corporate Travel"),
                  _subtitleWidget("Tour Packages"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Desktop Layout
  Widget _buildDesktopLayout() {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 333,
          child: _footerCard(
            title: "Tannu Tour and Travels",
            children: [
              _subtitleWidget(
                "Your trusted partner for comfortable and affordable travel solutions across India.",
              ),
            ],
          ),
        ),
        SizedBox(
          width: 333,
          child: _footerCard(
            title: "Contact Us",
            children: [
              _subtitleWidget("+91 8239721861", icon: Icons.phone_outlined),
              _subtitleWidget(
                "tannutourandtravels@gmail.com",
                icon: Icons.email_outlined,
              ),
              _subtitleWidget(
                "Vidhyadhar Nagar, Jaipur",
                icon: Icons.location_on_outlined,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 333,
          child: _footerCard(
            title: "Our Services",
            children: [
              _subtitleWidget("Car Rental Services"),
              _subtitleWidget("Bus Rental Services"),
              _subtitleWidget("Corporate Travel"),
              _subtitleWidget("Tour Packages"),
            ],
          ),
        ),
      ],
    );
  }

  dynamic _titleWidget(String title) => Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
    child: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  dynamic _subtitleWidget(String subtitle, {IconData? icon}) => Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
    child: Row(
      children: [
        if (icon != null)
          Icon(icon, size: 14, color: Colors.white.withValues(alpha: 0.9)),
        if (icon != null) const SizedBox(width: 8),

        Expanded(
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
        ),
      ],
    ),
  );
}
