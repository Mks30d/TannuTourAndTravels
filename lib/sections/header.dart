import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      // height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/headerMountain.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 5, 77, 136).withValues(alpha: 0.9),
              const Color.fromARGB(255, 0, 16, 28).withValues(alpha: 0.9),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(deviceWidth * 0.06, 11, 0, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tannu Tour And Travels",
                style: TextStyle(
                  fontSize: 38,
                  // fontSize: deviceWidth * 0.03,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

              Text(
                "Your Trusted Partner for Tours & Travel",
                style: TextStyle(
                  fontSize: 15,
                  // fontSize: deviceWidth * 0.012,
                  color: Colors.white.withValues(alpha: 0.8),
                ),
              ),

              SizedBox(height: 18),

              // Contact Information
              Wrap(
                spacing: 13,
                runSpacing: 5,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        size: 20,
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "24/7 Service",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        size: 20,
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "+91 8239721861",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.mail_outline,
                        size: 20,
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "tannutourandtravels@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
