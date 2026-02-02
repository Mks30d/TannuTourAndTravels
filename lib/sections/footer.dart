import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/footer.jpg",
          height: 111,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        Container(
          decoration: BoxDecoration(
            // color: const Color.fromARGB(255, 8, 46, 112),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 0, 16, 28).withValues(alpha: 0.9),
                const Color.fromARGB(255, 5, 77, 136).withValues(alpha: 0.9),
              ],
            ),
          ),
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.red.withValues(alpha: 0.3),
                    width: 333,
                    height: 162,
                    // constraints: BoxConstraints(minWidth: 200, maxWidth: 400),
                    padding: EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _titleWidget("Tannu Tour and Travels"),
                        _subtitleWidget(
                          "Your trusted partner for comfortable and affordable travel solutions across India.",
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.yellow.withValues(alpha: 0.3),
                    width: 333,
                    height: 162,
                    // constraints: BoxConstraints(minWidth: 200, maxWidth: 500),
                    padding: EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _titleWidget("Contact Us"),
                        _subtitleWidget(
                          "+91 8239721861",
                          icon: Icons.phone_outlined,
                        ),
                        _subtitleWidget(
                          "info@tannutravel.com",
                          icon: Icons.email_outlined,
                        ),
                        _subtitleWidget(
                          "Vidhyadhar Nagar, Jaipur",
                          icon: Icons.location_on_outlined,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    color: Colors.blue.withValues(alpha: 0.3),
                    width: 333,
                    height: 162,
                    // constraints: BoxConstraints(minWidth: 200, maxWidth: 500),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _titleWidget("Our Services"),
                        _subtitleWidget("Car Rental Services"),
                        _subtitleWidget("Bus Rental Services"),
                        _subtitleWidget("Corporate Travel"),
                        _subtitleWidget("Tour Packages"),
                      ],
                    ),
                  ),
                ],
              ),

              Divider(
                thickness: 0.5,
                color: Colors.white.withValues(alpha: 0.4),
                indent: 55,
                endIndent: 55,
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "© 2026 Tannu Tour and Travels. All rights reserved.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),
              ),
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
