import 'package:flutter/material.dart';

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
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.withValues(alpha: 0.1),
      child: Column(
        children: [
          SizedBox(height: 11),
          Container(
            margin: EdgeInsets.all(11),
            child: Column(
              children: [
                Text(
                  "Serving All Across India",
                  style: TextStyle(
                    // fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),

                Text(
                  "From Kashmir to Kanyakumari, Kutch to Kohima - Tannu Tour and Travels provides reliable transportation services throughout India",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.9),
                    fontSize: 16,
                    // fontSize: MediaQuery.of(context).size.width * 0.025,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // Text(
                //   "transportation services throughout India",
                //   style: TextStyle(
                //     color: Colors.black.withValues(alpha: 0.8),
                //     fontSize: MediaQuery.of(context).size.width * 0.035,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
              ],
            ),
          ),

          SizedBox(height: 30),

          Container(
            height: deviceWidth < 915 ? null : 650,
            margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 1),
              borderRadius: BorderRadius.circular(22),
            ),
            child: MediaQuery.of(context).size.width < 815
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [mapSection(), stateSection()],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: mapSection()),

                      Expanded(child: stateSection()),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  // =================== Sub-Widgets ====================
  dynamic mapSection() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/locations/photo(1).jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(35),
          decoration: BoxDecoration(
            color: Color(0xff144EED).withValues(alpha: 0.85),

            // borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  "assets/images/locations/photo(1).jpg",
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  expandedCard("28+", "States & UTs"),
                  SizedBox(width: 11),
                  expandedCard("500+", "Cities"),
                  SizedBox(width: 11),
                  expandedCard("10k+", "Trips"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded expandedCard(String title, String subtitle) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 11, 8, 11),
        decoration: BoxDecoration(
          color: Color.fromARGB(207, 105, 145, 255),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  // ------------------- State Section -------------------
  dynamic stateSection() {
    return Container(
      width: MediaQuery.of(context).size.width < 815 ? null : 300,
      // color: const Color.fromARGB(79, 0, 187, 212),
      padding: EdgeInsets.fromLTRB(18, 11, 18, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Pan-India Coverage",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 8),

              Text(
                "Experience seamless travel across every corner of India with our extensive network and well-maintained fleet.",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 231, 255),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.pin_drop_outlined),
                    SizedBox(width: 6),
                    Text(
                      "All States & Union Territories We Serve",
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: 1),
                        // fontSize:MediaQuery.of(context).size.width < 880?13 :16,
                        fontSize: MediaQuery.of(context).size.width * 0.015,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 11),

                Wrap(
                  children: indianStates
                      .map(
                        (state) => Container(
                          margin: EdgeInsets.fromLTRB(0, 3, 5, 3),
                          padding: EdgeInsets.fromLTRB(11, 6, 11, 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            state,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
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

          Container(
            padding: EdgeInsets.fromLTRB(18, 14, 18, 14),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff144EED),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Available 24/7 for Bookings",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 12,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "+91 8239721861",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Call us anytime, anywhere in India",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 12,
                    // fontWeight: FontWeight.w500,
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
